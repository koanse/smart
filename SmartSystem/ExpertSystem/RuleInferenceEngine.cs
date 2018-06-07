using System.Collections.Generic;

namespace WebApplication1.ExpertSystem
{
	public class RuleInferenceEngine
	{
		public List<Rule> Rules { get; set; } = new List<Rule>();
		public WorkingMemory WorkingMemory { get; set; } = new WorkingMemory();

		public RuleInferenceEngine()
		{

		}

		public void AddRule(Rule rule)
		{
			Rules.Add(rule);
		}

		public void ClearRules()
		{
			Rules.Clear();
		}

		//forward chain
		public void Infer()
		{
			List<Rule> cs = null;
			do
			{
				cs = Match();
				if (cs.Count > 0)
				{
					if (!FireRule(cs))
					{
						break;
					}
				}
			} while (cs.Count > 0);
		}

		//backward chain
		public Clause Infer(string goal_variable, List<Clause> unproved_conditions)
		{
			Clause conclusion = null;
			var goal_stack = new List<Rule>();

			foreach (var rule in Rules)
			{
				var consequent = rule.GetConsequent();
				if (consequent.Variable == goal_variable)
				{
					goal_stack.Add(rule);
				}
			}

			foreach (var rule in Rules)
			{
				rule.FirstAntecedent();
				var goal_reached = true;
				while (rule.HasNextAntecedents())
				{
					var antecedent = rule.NextAntecedent();
					if (!WorkingMemory.IsFact(antecedent))
					{
						if (WorkingMemory.IsNotFact(antecedent)) //conflict with memory
						{
							goal_reached = false;
							break;
						}
						if (IsFact(antecedent, unproved_conditions)) //deduce to be a fact
						{
							WorkingMemory.AddFact(antecedent);
						}
						else //deduce to not be a fact
						{
							goal_reached = false;
							break;
						}
					}
				}

				if (goal_reached)
				{
					conclusion = rule.GetConsequent();
					break;
				}
			}

			return conclusion;
		}

		public void ClearFacts()
		{
			WorkingMemory.ClearFacts();
		}

		protected bool IsFact(Clause goal, List<Clause> unproved_conditions)
		{
			var goal_stack = new List<Rule>();

			foreach (var rule in Rules)
			{
				var consequent = rule.GetConsequent();
				var it = consequent.MatchClause(goal);
				if (it == IntersectionType.INCLUDE)
				{
					goal_stack.Add(rule);
				}
			}

			if (goal_stack.Count == 0)
			{
				unproved_conditions.Add(goal);
			}
			else
			{
				foreach (var rule in goal_stack)
				{
					rule.FirstAntecedent();
					var goal_reached = true;
					while (rule.HasNextAntecedents())
					{
						var antecedent = rule.NextAntecedent();
						if (!WorkingMemory.IsFact(antecedent))
						{
							if (WorkingMemory.IsNotFact(antecedent))
							{
								goal_reached = false;
								break;
							}
							if (IsFact(antecedent, unproved_conditions))
							{
								WorkingMemory.AddFact(antecedent);
							}
							else
							{
								goal_reached = false;
								break;
							}
						}
					}

					if (goal_reached)
					{
						return true;
					}
				}
			}

			return false;
		}

		protected bool FireRule(List<Rule> conflictingRules)
		{
			var hasRule2Fire = false;
			foreach (var rule in conflictingRules)
			{
				if (!rule.IsFired())
				{
					hasRule2Fire = true;
					rule.Fire(WorkingMemory);
				}
			}

			return hasRule2Fire;

		}

		/// <summary>
		/// property indicating the known facts in the current working memory
		/// </summary>
		public WorkingMemory Facts
		{
			get
			{
				return WorkingMemory;
			}
		}

		/// <summary>
		/// Add another know fact into the working memory
		/// </summary>
		/// <param name="c"></param>
		public void AddFact(Clause c)
		{
			WorkingMemory.AddFact(c);
		}

		/// <summary>
		/// Method that return the set of rules whose antecedents match with the working memory
		/// </summary>
		/// <returns></returns>
		protected List<Rule> Match()
		{
			var cs = new List<Rule>();
			foreach (var rule in Rules)
			{
				if (rule.IsTriggered(WorkingMemory))
				{
					cs.Add(rule);
				}
			}
			return cs;
		}
	}
}
