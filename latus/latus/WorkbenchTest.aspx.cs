using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace latus
{
    public partial class WorkbenchTest : System.Web.UI.Page
    {
        static string ID = string.Empty;
        string error = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Retreieve CustomerId
            ID = Request.QueryString["id"];

            //Create the Workbench DataTable
            DataTable WorkbenchTable = new DataTable();
            WorkbenchTable.Columns.Add("Questions", typeof(string));

            //Import the current CustomerID from previous pages
            Guid TempCustomerID = Guid.Empty;
            Guid.TryParse(ID, out TempCustomerID);
            Guid CustomerID = TempCustomerID;

            //Get SolutionInfo (Used: SolutionId and SolutionName) -> (For Question retreival and Column Name)
            List<SolutionInfo> SolutionInfo = sql.getSolutionInfo(out error);
            err.Text = error;
            List<Guid> SolutionIds = new List<Guid>();

            List<Question> Questions = new List<Question>();
            List<int> QuestionIds = new List<int>();

            //Retreiving QuestionIds from UseCase selection (If none, grab all questions)
            List<int> UseCases = sql.getCustomerUseCase(CustomerID, out error);
            err.Text = error;
            if (UseCases.Count > 0)
            {
                QuestionIds = sql.getUseCaseQuestionIds(UseCases, out error);
                err.Text = error;
                Questions = sql.getSolutionQuestionsFromId(QuestionIds, out error);
                err.Text = error;
            }
            else
            {
                Questions = sql.getSolutionQuestions(out error);
                err.Text = error;
            }

            //Add columns based on Solution Names and Retreive SolutionIds
            foreach (SolutionInfo siItem in SolutionInfo)
            {
                WorkbenchTable.Columns.Add(siItem.SolutionName, typeof(string));
                SolutionIds.Add(siItem.SolutionId);
            }

            //Retreive all previously logged answers from Solutions
            List<List<string>> AnswerDescriptions = sql.getAllSolutionAnswerDesc(SolutionIds, QuestionIds, out error);
            err.Text = error;

            //Retreieve Use Cases
            Dictionary<int, string> SimpleAnswers = sql.getSimpleAnswers(out error);
            err.Text = error;

            //Create Rows of questions
            int RowIndex = 0;
            foreach (Question Question in Questions)
            {
                DataRow NewRow = WorkbenchTable.NewRow();
                NewRow[0] = Question.QuestionText;
                Label text = new Label();

                for (int j = 0; j < SolutionInfo.Count; j++)
                {
                    Guid SolutionId = SolutionInfo[j].SolutionId;
                    int QuestionId = Question.QuestionId;
                    Answer Answer = sql.getSolutionAnswer(SolutionId, QuestionId, out error);
                    err.Text = error;

                    NewRow[j + 1] = SimpleAnswers[Answer.SimpleAnswerId] + " " + Answer.AnswerDesc;

                    //NewRow[j + 1] = AnswerDescriptions[j][RowIndex];
                    //Add in when getAllSolutionAnswerDesc Function works
                }
                RowIndex++;
                WorkbenchTable.Rows.Add(NewRow);

            }

            WorkbenchGV.DataSource = WorkbenchTable;
            WorkbenchGV.DataBind();
        }

        protected void WorkbenchGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow Row = WorkbenchGV.SelectedRow;
            TextBox Textbox = new TextBox();
            Row.Controls.Add(Textbox);
        }

    }
}