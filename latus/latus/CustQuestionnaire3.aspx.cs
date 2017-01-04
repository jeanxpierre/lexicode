using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latus
{
    public partial class CustQuestionnaire3 : System.Web.UI.Page
    {

        static string ID = string.Empty;
        string error = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["id"];
        }

        protected void CustomerQuestionnaire3SubmitButton_Click(object sender, EventArgs e)
        {
            List<Questionnaire3Answers> ListQuestionnaire3Answers = new List<Questionnaire3Answers>();

            List<Answer> QuestionnaireAnswers = new List<Answer>();

            Guid CustomerID = new Guid();
            Guid.TryParse(ID, out CustomerID);

            QuestionnaireAnswers.Add(new Answer(CustomerID, 77, "4", "", "0", null, Q1_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 78, "4", "", "0", null, Q2_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 79, "4", "", "0", null, Q3_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 80, "4", "", "0", null, Q4_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 81, "4", "", "0", null, Q5_WeightTextBox.Text));

            List<string> SecurityMeasures = SecurityMeasureCheckBox.Items.Cast<ListItem>()
                .Where(li => li.Selected)
                .Select(li => li.Value)
                .ToList();

            string SecurityMeasureString = string.Empty;
            foreach (string li in SecurityMeasures)
            {
                SecurityMeasureString = SecurityMeasureString+ li + ", ";
            }

            QuestionnaireAnswers.Add(new Answer(CustomerID, 82, "4", SecurityMeasureString, "0", null, "0"));

            List<Answer> FinalAnswerList = new List<Answer>();
            foreach (Answer Answer in QuestionnaireAnswers)
            {
                if (Answer.SimpleAnswerId > 0)
                {
                    FinalAnswerList.Add(Answer);
                }
            }

            ListQuestionnaire3Answers.Add(new Questionnaire3Answers(FinalAnswerList));
            sql.updateQuestionnaire3Answers(ListQuestionnaire3Answers, out error);
            err.Text = error;

            //Response.Redirect("/location?id=" + CustomerID.ToString());
        }
    }
}