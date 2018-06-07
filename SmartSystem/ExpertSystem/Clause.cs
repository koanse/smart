using System;
using System.Xml.Serialization;

namespace WebApplication1.ExpertSystem
{
	[Serializable]
	[XmlInclude(typeof(IsClause))]
	[XmlInclude(typeof(GEClause))]
	[XmlInclude(typeof(GreaterClause))]
	[XmlInclude(typeof(LEClause))]
	[XmlInclude(typeof(LessClause))]
	public class Clause
    {
		public string Variable { get; set; }

		public string Value { get; set; }

		[XmlIgnore]
		public string Condition
		{
			get
			{
				if (this is GEClause)
				{
					return ">=";
				}
				if (this is GreaterClause)
				{
					return ">";
				}
				if (this is LEClause)
				{
					return "<=";
				}
				if (this is LessClause)
				{
					return "<";
				}
				return "=";
			}
		}

        public Clause()
		{
		}

        public Clause(string variable, string value)
        {
            Variable = variable;
            Value = value;
        }


        public IntersectionType MatchClause(Clause rhs)
        {
            if (Variable!=rhs.Variable)
            {
                return IntersectionType.UNKNOWN;
            }

            return Intersect(rhs);
        }

        protected virtual IntersectionType Intersect(Clause rhs)
        {
            throw new NotImplementedException();
        }

        public override string ToString()
        {
            return Variable + " " + Condition + " " + Value;
        }
    }
}
