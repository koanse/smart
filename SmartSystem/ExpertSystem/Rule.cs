using System;
using System.Collections.Generic;
using System.Xml.Serialization;

namespace WebApplication1.ExpertSystem
{
	[Serializable]
    public class Rule
    {
        public Clause Consequent { get; set; }

		public List<Clause> Antecedents { get; set; } = new List<Clause>();

		[XmlIgnore]
		public bool Fired { get; set; } = false;

		[XmlIgnore]
		public string Name { get; set; }

		[XmlIgnore]
		public int Index { get; set; } = 0;

		public Rule()
		{
		}

		public Rule(string name)
        {
            Name = name;
        }

        public void FirstAntecedent()
        {
            Index = 0;
        }

        public bool HasNextAntecedents()
        {
            return Index < Antecedents.Count;
        }

        public Clause NextAntecedent()
        {
            var c = Antecedents[Index];
            Index++;
            return c;
        }

        public string GetName()
        {
            return Name;
        }

        public void SetConsequent(Clause consequent)
        {
            Consequent = consequent;
        }

        public void AddAntecedent(Clause antecedent)
        {
            Antecedents.Add(antecedent);
        }

        public Clause GetConsequent()
        {
            return Consequent;
        }

        public bool IsFired()
        {
            return Fired;
        }

        public void Fire(WorkingMemory wm)
        {
            if (!wm.IsFact(Consequent))
            {
                wm.AddFact(Consequent);
            }

            Fired = true;
        }

        public bool IsTriggered(WorkingMemory wm)
        {
            foreach (var antecedent in Antecedents) 
            {
                if (!wm.IsFact(antecedent))
                {
                    return false;
                }
            }

            return true;
        }

		public override string ToString()
		{
			return $"{Consequent}, ЕСЛИ {string.Join(", ", Antecedents)}";
		}
    }
}
