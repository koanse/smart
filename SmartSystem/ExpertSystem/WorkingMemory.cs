using System.Collections.Generic;
using System.Text;

namespace WebApplication1.ExpertSystem
{
	public class WorkingMemory
	{
		public List<Clause> Facts { get; set; } = new List<Clause>();

		public WorkingMemory()
		{

		}

		public void AddFact(Clause fact)
		{
			Facts.Add(fact);
		}

		public bool IsNotFact(Clause c)
		{
			foreach (var fact in Facts)
			{
				if (fact.MatchClause(c) == IntersectionType.MUTUALLY_EXCLUDE)
				{
					return true;
				}
			}

			return false;
		}

		public void ClearFacts()
		{
			Facts.Clear();
		}

		public bool IsFact(Clause c)
		{
			foreach (var fact in Facts)
			{
				if (fact.MatchClause(c) == IntersectionType.INCLUDE)
				{
					return true;
				}
			}

			return false;
		}

		public override string ToString()
		{
			var message = new StringBuilder();

			var first_clause = true;
			foreach (var cc in Facts)
			{
				if (first_clause)
				{
					message.Append(cc);
					first_clause = false;
				}
				else
				{
					message.Append("\n" + cc);
				}
			}

			return message.ToString();
		}

		public int Count
		{
			get { return Facts.Count; }
		}
	}
}
