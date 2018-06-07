using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;

namespace WebApplication1.Models
{
    public class QuestionGroupViewModel
    {
		public QuestionGroup QuestionGroup { get; set; }
		public string RulesText { get; set; }
		public string QuestionsText { get; set; }
	}

	public class QuestionGroupListViewModel
	{
		public List<QuestionGroup> QuestionGroups { get; set; }
	}

	public class TouristicContentViewModel
	{
		public TouristicContent TouristicContent { get; set; }
	}

	public class TouristicContentsListViewModel
	{
		public TouristicContentType Type { get; set; }
		public List<TouristicContent> TouristicContents { get; set; }
	}

	public class QuestionsViewModel
	{
		public Guid QuestionGroupId { get; set; }
		public string Title { get; set; }
		public List<Question> Questions { get; set; }
		public List<string> SelectedAnswers { get; set; }
	}

	public class ResultsViewModel
	{
		public string Title { get; set; }
		public string Results { get; set; }
	}
}