using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace latus
{
    public partial class CustQuestionnaire2 : System.Web.UI.Page
    {

        static string ID = string.Empty;
        string error = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["id"];
        }

        protected void Q1_1_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_1_TextBox.Visible = true;
            Q1_1_WeightTextBox.Visible = true;
        }

        protected void Q1_2_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_2_TextBox.Visible = true;
            Q1_2_WeightTextBox.Visible = true;
        }

        protected void Q1_3_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_3_TextBox.Visible = true;
            Q1_3_WeightTextBox.Visible = true;
        }

        protected void Q1_4_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_4_TextBox.Visible = true;
            Q1_4_WeightTextBox.Visible = true;
        }

        protected void Q1_5_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_5_TextBox.Visible = true;
            Q1_5_WeightTextBox.Visible = true;
        }

        protected void Q1_6_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_6_TextBox.Visible = true;
            Q1_6_WeightTextBox.Visible = true;
        }

        protected void Q1_7_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_7_TextBox.Visible = true;
            Q1_7_WeightTextBox.Visible = true;
        }

        protected void Q1_8_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_8_TextBox.Visible = true;
            Q1_8_WeightTextBox.Visible = true;
        }

        protected void Q1_9_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_9_TextBox.Visible = true;
            Q1_9_WeightTextBox.Visible = true;
        }

        protected void Q1_10_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_10_TextBox.Visible = true;
            Q1_10_WeightTextBox.Visible = true;
        }

        protected void Q1_11_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_11_TextBox.Visible = true;
            Q1_11_WeightTextBox.Visible = true;
        }

        protected void Q1_12_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_12_TextBox.Visible = true;
            Q1_12_WeightTextBox.Visible = true;
        }

        protected void Q1_13_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_13_TextBox.Visible = true;
            Q1_13_WeightTextBox.Visible = true;
        }

        protected void Q1_14_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_14_TextBox.Visible = true;
            Q1_14_WeightTextBox.Visible = true;
        }

        protected void Q1_15_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q1_15_TextBox.Visible = true;
            Q1_15_WeightTextBox.Visible = true;
        }

        protected void Q2_1_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_1_TextBox.Visible = true;
            Q2_1_WeightTextBox.Visible = true;
        }

        protected void Q2_2_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_2_TextBox.Visible = true;
            Q2_2_WeightTextBox.Visible = true;
        }

        protected void Q2_3_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_3_TextBox.Visible = true;
            Q2_3_WeightTextBox.Visible = true;
        }

        protected void Q2_4_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_4_TextBox.Visible = true;
            Q2_4_WeightTextBox.Visible = true;
        }

        protected void Q2_5_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_5_TextBox.Visible = true;
            Q2_5_WeightTextBox.Visible = true;
        }

        protected void Q2_6_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_6_TextBox.Visible = true;
            Q2_6_WeightTextBox.Visible = true;
        }

        protected void Q2_7_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_7_TextBox.Visible = true;
            Q2_7_WeightTextBox.Visible = true;
        }

        protected void Q2_8_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_8_TextBox.Visible = true;
            Q2_8_WeightTextBox.Visible = true;
        }

        protected void Q2_9_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q2_9_TextBox.Visible = true;
            Q2_9_WeightTextBox.Visible = true;
        }

        protected void Q3_1_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q3_1_TextBox.Visible = true;
            Q3_1_WeightTextBox.Visible = true;
        }

        protected void Q3_2_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_2_WeightTextBox.Visible = true;
        }

        protected void Q3_3_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_3_WeightTextBox.Visible = true;
        }

        protected void Q3_4_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_4_WeightTextBox.Visible = true;
        }

        protected void Q3_5_Radio_SelectedIndexChanged(object sender, EventArgs e)
        {
            Q3_5_TextBox.Visible = true;
            Q3_5_WeightTextBox.Visible = true;
        }

        protected void Q3_6_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_6_TextBox.Visible = true;
            Q3_6_WeightTextBox.Visible = true;
        }

        protected void Q3_7_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_7_WeightTextBox.Visible = true;
        }

        protected void Q3_8_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_8_WeightTextBox.Visible = true;
        }

        protected void Q3_9_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_9_WeightTextBox.Visible = true;
        }

        protected void Q3_10_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_10_WeightTextBox.Visible = true;

        }

        protected void Q3_11_TextBox_TextChanged(object sender, EventArgs e)
        {
            Q3_11_WeightTextBox.Visible = true;
        }

        protected void CustomerQuestionnaire2SubmitButton_Click(object sender, EventArgs e)
        {
            List<Questionnaire2Answers> ListQuestionnaire2Answers = new List<Questionnaire2Answers>();

            List<Answer> QuestionnaireAnswers = new List<Answer>();

            Guid CustomerID = new Guid();
            Guid.TryParse(ID, out CustomerID);

            QuestionnaireAnswers.Add(new Answer(CustomerID, 42, Q1_1_Radio.Text, Q1_1_TextBox.Text, Q1_1_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 43, Q1_2_Radio.Text, Q1_2_TextBox.Text, Q1_2_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 44, Q1_3_Radio.Text, Q1_3_TextBox.Text, Q1_3_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 45, Q1_4_Radio.Text, Q1_4_TextBox.Text, Q1_4_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 46, Q1_5_Radio.Text, Q1_5_TextBox.Text, Q1_5_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 47, Q1_6_Radio.Text, Q1_6_TextBox.Text, Q1_6_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 48, Q1_7_Radio.Text, Q1_7_TextBox.Text, Q1_7_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 49, Q1_8_Radio.Text, Q1_8_TextBox.Text, Q1_8_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 50, Q1_9_Radio.Text, Q1_9_TextBox.Text, Q1_9_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 51, Q1_10_Radio.Text, Q1_10_TextBox.Text, Q1_10_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 52, Q1_11_Radio.Text, Q1_11_TextBox.Text, Q1_11_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 53, Q1_12_Radio.Text, Q1_12_TextBox.Text, Q1_12_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 54, Q1_13_Radio.Text, Q1_13_TextBox.Text, Q1_13_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 55, Q1_14_Radio.Text, Q1_14_TextBox.Text, Q1_14_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 56, Q1_15_Radio.Text, Q1_15_TextBox.Text, Q1_15_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 57, Q2_1_Radio.Text, Q2_1_TextBox.Text, Q2_1_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 58, Q2_2_Radio.Text, Q2_2_TextBox.Text, Q2_2_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 59, Q2_3_Radio.Text, Q2_3_TextBox.Text, Q2_3_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 60, Q2_4_Radio.Text, Q2_4_TextBox.Text, Q2_4_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 61, Q2_5_Radio.Text, Q2_5_TextBox.Text, Q2_5_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 62, Q2_6_Radio.Text, Q2_6_TextBox.Text, Q2_6_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 63, Q2_7_Radio.Text, Q2_7_TextBox.Text, Q2_7_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 64, Q2_8_Radio.Text, Q2_8_TextBox.Text, Q2_8_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 65, Q2_9_Radio.Text, Q2_9_TextBox.Text, Q2_9_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 66, Q3_1_Radio.Text, Q3_1_TextBox.Text, Q3_1_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 67, "4", Q3_2_TextBox.Text, Q3_2_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 68, "4", Q3_3_TextBox.Text, Q3_3_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 69, "4", Q3_4_TextBox.Text, Q3_4_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 70, "4", Q3_5_TextBox.Text, Q3_5_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 71, "4", Q3_6_TextBox.Text, Q3_6_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 72, "4", Q3_7_TextBox.Text, Q3_7_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 73, "4", Q3_8_TextBox.Text, Q3_8_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 74, "4", Q3_9_TextBox.Text, Q3_9_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 75, "4", Q3_10_TextBox.Text, Q3_10_WeightTextBox.Text));
            QuestionnaireAnswers.Add(new Answer(CustomerID, 76, "4", Q3_11_TextBox.Text, Q3_11_WeightTextBox.Text));

            List<Answer> FinalAnswerList = new List<Answer>();
            foreach (Answer Answer in QuestionnaireAnswers)
            {
                if (Answer.SimpleAnswerId > 0)
                {
                    if (Answer.SimpleAnswerId == 4)
                    {
                        if(Answer.AnswerDesc != string.Empty)
                        {
                            FinalAnswerList.Add(Answer);
                        }
                    }
                    
                    else
                    {
                        FinalAnswerList.Add(Answer);
                    }
                }
            }

            ListQuestionnaire2Answers.Add(new Questionnaire2Answers(FinalAnswerList));
            sql.updateQuestionnaire2Answers(ListQuestionnaire2Answers, out error);
            err.Text = error;

            Response.Redirect("/CustQuestionnaire3.aspx?id=" + CustomerID.ToString());
        }
    }
}