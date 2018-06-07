using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Xml.Serialization;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using WebApplication1.ExpertSystem;
using WebApplication1.Models;
using System.IO;

namespace WebApplication1.Controllers
{
	[Authorize]
	public class SmartController : Controller
	{
		private ApplicationSignInManager _signInManager;
		private ApplicationUserManager _userManager;

		public SmartController()
		{
		}

		public ActionResult QuestionGroupList()
		{
			var model = new QuestionGroupListViewModel
			{
				QuestionGroups = new List<QuestionGroup>()
			};

			var dbContext = new ApplicationDbContext();
			model.QuestionGroups = dbContext.QuestionGroups.ToList();

			return View(model);
		}

		public ActionResult AddQuestionGroup()
		{
			var model = new QuestionGroupViewModel();
			model.QuestionGroup = new QuestionGroup();
			return View(model);
		}

		[HttpPost]
		[ValidateInput(false)]
		public ActionResult AddQuestionGroup(QuestionGroupViewModel model)
		{
			var dbContext = new ApplicationDbContext();
			var qg = dbContext.QuestionGroups.Add(model.QuestionGroup);
			dbContext.SaveChanges();

			return RedirectToAction("AddQuestionGroup", new { id = qg.ID });
		}

		public ActionResult EditQuestionGroup(Guid id)
		{
			var dbContext = new ApplicationDbContext();
			var qg = dbContext.QuestionGroups.Find(id);

			var questions = new List<Question>();
			var rules = new List<Rule>();
			var rulesText = string.Empty;
			var questionsText = string.Empty;
			try
			{
				var serializerQuestion = new XmlSerializer(typeof(List<Question>));
				using (var reader = new StringReader(qg.QuestionsXml))
				{
					questions = (List<Question>)serializerQuestion.Deserialize(reader);
				}


				var serializerRule = new XmlSerializer(typeof(List<Rule>));
				using (var reader = new StringReader(qg.RulesXml))
				{
					rules = (List<Rule>)serializerRule.Deserialize(reader);
				}

				rulesText = string.Join("; ", rules.Select(x => x.ToString()));
				questionsText = string.Join("; ", questions.Select(x => x.ToString()));

			}
			catch (Exception e)
			{
				rulesText = "Возможны ошибки формата правил";
				questionsText = "Возможны ошибки формата вопросов";
			}

			var model = new QuestionGroupViewModel
			{
				QuestionGroup = qg,
				RulesText=rulesText,
				QuestionsText = questionsText
			};
			return View(model);
		}

		[HttpPost]
		[ValidateInput(false)]
		public ActionResult EditQuestionGroup(QuestionGroupViewModel model)
		{
			var dbContext = new ApplicationDbContext();
			dbContext.Entry(model.QuestionGroup).State = EntityState.Modified;
			dbContext.SaveChanges();

			return RedirectToAction("EditQuestionGroup", new { id = model.QuestionGroup.ID });
		}

		public ActionResult QuestionGroupExample()
		{
			return View(new QuestionGroupViewModel());
		}

		public ActionResult AddTouristicContent(TouristicContentType type)
		{
			var model = new TouristicContentViewModel
			{
				TouristicContent = new TouristicContent
				{
					TouristicContentType = type
				}
			};

			return View(model);
		}

		[HttpPost]
		[ValidateInput(false)]
		public ActionResult AddTouristicContent(TouristicContentViewModel model)
		{
			var dbContext = new ApplicationDbContext();
			var qg = dbContext.TouristicContents.Add(model.TouristicContent);
			dbContext.SaveChanges();

			return RedirectToAction("AddTouristicContent", new { type = model.TouristicContent.TouristicContentType });
		}


		public ActionResult EditTouristicContent(Guid id)
		{
			var dbContext = new ApplicationDbContext();
			var qg = dbContext.TouristicContents.Find(id);
			var model = new TouristicContentViewModel { TouristicContent = qg };
			return View(model);
		}

		public ActionResult ViewTouristicContent(Guid id)
		{
			var dbContext = new ApplicationDbContext();
			var qg = dbContext.TouristicContents.Find(id);
			var model = new TouristicContentViewModel { TouristicContent = qg };
			return View(model);
		}

		public ActionResult RemoveTouristicContent(Guid id)
		{
			var dbContext = new ApplicationDbContext();
			var tc = dbContext.TouristicContents.Find(id);
			dbContext.Entry(tc).State = EntityState.Deleted;
			dbContext.SaveChanges();

			return RedirectToAction("TouristicContentList", new { type =  tc.TouristicContentType });
		}

		[HttpPost]
		[ValidateInput(false)]
		public ActionResult EditTouristicContent(TouristicContentViewModel model)
		{
			var dbContext = new ApplicationDbContext();
			dbContext.Entry(model.TouristicContent).State = EntityState.Modified;
			dbContext.SaveChanges();

			return RedirectToAction("EditTouristicContent", new { id = model.TouristicContent.ID });
		}

		public ActionResult TouristicContentList(TouristicContentType type)
		{
			var dbContext = new ApplicationDbContext();

			var model = new TouristicContentsListViewModel
			{
				TouristicContents = dbContext.TouristicContents.Where(t => t.TouristicContentType == type).ToList(),
				Type = type
			};

			return View(model);
		}

		public ActionResult Questions(Guid questionGroupId)
		{
			var dbContext = new ApplicationDbContext();
			var qg = dbContext.QuestionGroups.Find(questionGroupId);

			List<Question> questions;
			var serializer = new XmlSerializer(typeof(List<Question>));
			using (var reader = new StringReader(qg.QuestionsXml))
			{
				questions = (List<Question>) serializer.Deserialize(reader);
			}

			var model = new QuestionsViewModel
			{
				QuestionGroupId = qg.ID,
				Title = qg.Name,
				Questions = questions,
				SelectedAnswers = new string[questions.Sum(q => q.Answers.Count)].ToList()
			};
			return View(model);
		}


		[HttpPost]
		[ValidateInput(false)]
		public ActionResult PostAnswers(QuestionsViewModel model)
		{
			var contentType = TouristicContentType.Tour;
			switch (model.QuestionGroupId.ToString())
			{
				case Service.Constants.TourGuid:
					contentType = TouristicContentType.Tour;
					break;
				case Service.Constants.ExcursionGuid:
					contentType = TouristicContentType.Excursion;
					break;
				case Service.Constants.EventGuid:
					contentType = TouristicContentType.Event;
					break;
				case WebApplication1.Service.Constants.HotelGuid:
					contentType = TouristicContentType.Hotel;
					break;
				case WebApplication1.Service.Constants.RestaurantGuid:
					contentType = TouristicContentType.Restaurant;
					break;
			}

			var dbContext = new ApplicationDbContext();
			var qg = dbContext.QuestionGroups.Find(model.QuestionGroupId);

			List<Question> questions;
			var serializerQuestion = new XmlSerializer(typeof(List<Question>));
			using (var reader = new StringReader(qg.QuestionsXml))
			{
				questions = (List<Question>)serializerQuestion.Deserialize(reader);
			}

			var selectedAnswers = new List<Answer>();
			var index = 0;
			foreach (var q in questions)
			{
				foreach (var a in q.Answers)
				{
					if (a.AnswerText == model.SelectedAnswers[index])
					{
						selectedAnswers.Add(a);
						break;
					}
				}
				index++;
			}

			List<Rule> rules;
			var serializerRule = new XmlSerializer(typeof(List<Rule>));
			using (var reader = new StringReader(qg.RulesXml))
			{
				rules = (List<Rule>)serializerRule.Deserialize(reader);
			}

			var rie = new RuleInferenceEngine();
			rie.Rules = rules;
			foreach (var a in selectedAnswers)
			{
				foreach (var c in a.AnswerFactsList)
				{
					rie.Facts.AddFact(c);
				}
			}

			rie.Infer();

			var tags =
				rie.WorkingMemory.Facts.Where(f => f.Variable == Service.Constants.ResultTag)
					.ToList()
					.Select(x => x.Value)
					.ToList();

			var contents = dbContext.TouristicContents.Where(x => tags.Contains(x.LogicalTag) && x.TouristicContentType == contentType).ToList();

			var result = string.Empty;
			var userId = User.Identity.GetUserId();

			if (contents.Any())
			{
				var urlHelper = new UrlHelper(Request.RequestContext);
				var allContentsString = contents.Select(x =>
					$"<a href='{urlHelper.Action("ViewTouristicContent", "Smart", new {id = x.ID})}'>{x.Name}</a>")
					.ToList();
				result += $"Рекомендуемые результаты:<br>{string.Join("<br>", allContentsString)}";
			}
			else
			{
				result = "В базе Smart-системы отсутствует подходящий контент, пожалуйста, воспользуйтесь общим каталогом.";
			}

			var interviewResult = dbContext.InterviewResults.Add(new InterviewResult
			{
				UserId = userId,
				Date = DateTime.Now,
				Results = result
			});

			dbContext.SaveChanges();

			return RedirectToAction("SmartResults", new { resultsId = interviewResult.ID });
		}

		public ActionResult SmartResults(Guid resultsId)
		{
			var dbContext = new ApplicationDbContext();
			var res = dbContext.InterviewResults.Find(resultsId);

			var model = new ResultsViewModel
			{
				Results = res.Results
			};
			return View(model);
		}


		#region Helpers

		#endregion
	}
}