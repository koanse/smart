using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using WebApplication1.ExpertSystem;

namespace WebApplication1.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
			// Add custom user claims here

	        //var universityContext = new SmartDbContext();

	        //universityContext.Courses.Add(new Course());

			return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
		public DbSet<QuestionGroup> QuestionGroups { get; set; }

		public DbSet<TouristicContent> TouristicContents { get; set; }

		public DbSet<InterviewResult> InterviewResults { get; set; }


		public ApplicationDbContext()
            : base("SmartContext", throwIfV1Schema: false)
        {
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
    }

	public abstract class BaseEntity
	{
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public Guid ID { get; set; }
	}

	public class QuestionGroup : BaseEntity
	{
		public string Name { get; set; }

		public string Description { get; set; }

		public string RulesXml { get; set; }

		public string QuestionsXml { get; set; }
	}

	public class TouristicContent : BaseEntity
	{
		public string Name { get; set; }

		public string Description { get; set; }

		public string LogicalTag { get; set; }

		public double Price { get; set; }

		public string PurchaseWayDescription { get; set; }

		public TouristicContentType TouristicContentType { get; set; }
	}

	public class InterviewResult : BaseEntity
	{
		public string UserId { get; set; }

		public DateTime Date { get; set; }

		public string Results { get; set; }
	}

	public enum TouristicContentType
	{
		[Display(Name = "Тур")]
		Tour = 1,

		[Display(Name = "Экскурсия")]
		Excursion = 2,

		[Display(Name = "Мероприятие")]
		Event = 3,

		[Display(Name = "Гостиница")]
		Hotel = 4,

		[Display(Name = "Ресторан")]
		Restaurant = 5
	}

	[Serializable]
	public class Question
	{
		public string QuestionText { get; set; }

		public List<Answer> Answers { get; set; }
		public override string ToString()
		{
			return $"'{QuestionText}' - ({string.Join("; ", Answers)})";
		}
	}

	[Serializable]
	public class Answer
	{
		public string AnswerText { get; set; }

		public List<Clause> AnswerFactsList { get; set; }

		public override string ToString()
		{
			return $"'{AnswerText}' : ({string.Join("; ", AnswerFactsList)})";
		}
	}
}