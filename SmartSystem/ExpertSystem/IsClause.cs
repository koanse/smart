namespace WebApplication1.ExpertSystem
{
	public class IsClause : Clause
	{
		public IsClause()
		{
		}

		public IsClause(string variable, string value)
			: base(variable, value)
		{
		}

		protected override IntersectionType Intersect(Clause rhs)
		{
			if (rhs is IsClause)
			{
				if (Value == rhs.Value)
				{
					return IntersectionType.INCLUDE;
				}
				return IntersectionType.MUTUALLY_EXCLUDE;
			}

			var v1 = Value;
			var v2 = rhs.Value;

			double a = 0;
			double b = 0;

			if (double.TryParse(v1, out a) && double.TryParse(v2, out b))
			{
				if (rhs is LessClause)
				{
					if (a >= b)
					{
						return IntersectionType.MUTUALLY_EXCLUDE;
					}
					return IntersectionType.INCLUDE;
				}
				if (rhs is LEClause)
				{
					if (a > b)
					{
						return IntersectionType.MUTUALLY_EXCLUDE;
					}
					return IntersectionType.INCLUDE;
				}
				if (rhs is GreaterClause)
				{
					if (a <= b)
					{
						return IntersectionType.MUTUALLY_EXCLUDE;
					}
					return IntersectionType.INCLUDE;
				}
				if (rhs is GEClause)
				{
					if (a < b)
					{
						return IntersectionType.MUTUALLY_EXCLUDE;
					}
					return IntersectionType.INCLUDE;
				}
				return IntersectionType.UNKNOWN;
			}
			return IntersectionType.UNKNOWN;
		}
	}
}
