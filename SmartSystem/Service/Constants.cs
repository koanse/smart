using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Web;

namespace WebApplication1.Service
{
	public static class Constants
	{
		public const string ResultTag = "result";
		public const string TourGuid = "ead88d20-0cf4-e711-9df1-eca86b8b143b";
		public const string ExcursionGuid = "d8f359ce-2df4-e711-9df1-eca86b8b143b";
		public const string EventGuid = "5242fdb0-d2f4-e711-9df1-eca86b8b143b";
		public const string RestaurantGuid = "92fa7627-69f5-e711-9df1-eca86b8b143b";
		public const string HotelGuid = "90588a6d-69f5-e711-9df1-eca86b8b143b";
		public const string AdminGuid = "6bcb98a3-c7dd-4f58-b7a0-bd025c9bed60";

		public static string GetDisplayName(this Enum enumValue)
		{
			return enumValue.GetType().GetMember(enumValue.ToString())
						   .First()
						   .GetCustomAttribute<DisplayAttribute>()
						   .Name;
		}
	}
}