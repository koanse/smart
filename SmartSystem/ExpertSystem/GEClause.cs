namespace WebApplication1.ExpertSystem
{
	public class GEClause : Clause
	{
		public GEClause()
		{
		}

		public GEClause(string variable, string value)
			: base(variable, value)
		{
		}

		protected override IntersectionType Intersect(Clause rhs)
		{
			var v1 = Value;
			var v2 = rhs.Value;

			var a = 0.0;
			var b = 0.0;

			if (double.TryParse(v1, out a) && double.TryParse(v2, out b))
			{
				if (rhs is LessClause)
				{
					//v1 >= a
					//v2 < b 
					//mutually exclusive: b <= a
					//unmatched: b > a
					if (b <= a)
					{
						return IntersectionType.MUTUALLY_EXCLUDE;
					}
					return IntersectionType.UNKNOWN;
				}
				if (rhs is LEClause)
				{
					//v1 >= a
					//v2 < b 
					//matched: b <= a
					//unmatched: b > a
					if (b <= a)
					{
						return IntersectionType.MUTUALLY_EXCLUDE;
					}
					return IntersectionType.UNKNOWN;
				}
				if (rhs is IsClause)
				{
					//v1 >= a
					//v2 = b
					//matched: b >= a
					//mutually exclusive: b < a
					if (b >= a)
					{
						return IntersectionType.INCLUDE;
					}
					return IntersectionType.MUTUALLY_EXCLUDE;
				}
				if (rhs is GEClause)
				{
					//v1 >= a
					//v2 >= b
					//mutually exclusive: b >= a
					//unmatched: b < a
					if (b >= a)
					{
						return IntersectionType.INCLUDE;
					}
					return IntersectionType.UNKNOWN;
				}
				if (rhs is GreaterClause)
				{
					//v1 >= a
					//v2 > b
					//mutually exclusive: b >= a
					//unmatched: b < a
					if (b >= a)
					{
						return IntersectionType.INCLUDE;
					}
					return IntersectionType.UNKNOWN;
				}
				return IntersectionType.UNKNOWN;
			}
			return IntersectionType.UNKNOWN;
		}
	}
}
