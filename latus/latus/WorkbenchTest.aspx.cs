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
            this.Message.Text = "Test";

            //Retreieve CustomerId
            ID = Request.QueryString["id"];

            //Create the Workbench DataTable & Questions column
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

            //Retreiving QuestionIds based on UseCase selection (If none, grab all questions)
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

            //Substantiate Question Rows with Question text
            foreach (Question Question in Questions)
            {
                DataRow NewRow = WorkbenchTable.NewRow();
                NewRow[0] = Question.QuestionText;
                WorkbenchTable.Rows.Add(NewRow);
            }

            WorkbenchGV.DataSource = WorkbenchTable;
            WorkbenchGV.DataBind();

            //Create Question Categories in Question column
            //Needs to account for Question Categories and SubQuestions
            Dictionary<int, string> QuestionCategories = sql.getQuestionCategories(out error);
            err.Text = error;

            int CurrentCategory = 0;
            for(int i = 0; i < Questions.Count; i++)
            {
                if(Questions[i].QuestionCategoryId != CurrentCategory)
                {
                    CurrentCategory = Questions[i].QuestionCategoryId;
                    //Create Category Label
                    Label QuestionCategoryLabel = new Label();
                    QuestionCategoryLabel.Font.Bold = true;
                    QuestionCategoryLabel.Text = QuestionCategories[CurrentCategory];
                    //Create NewLine 
                    LiteralControl NewLine = new LiteralControl("<br />");
                    //Create Question Label
                    Label QuestionLabel = new Label();
                    QuestionLabel.TabIndex = 1;
                    QuestionLabel.Text = "    " + Questions[i].QuestionText;
                    //Add controls to Cell
                    WorkbenchGV.Rows[i].Cells[0].Controls.Add(QuestionCategoryLabel);
                    WorkbenchGV.Rows[i].Cells[0].Controls.Add(NewLine);
                    WorkbenchGV.Rows[i].Cells[0].Controls.Add(QuestionLabel);
                }
                else
                {
                    Label QuestionLabel = new Label();
                    QuestionLabel.TabIndex = 1;
                    QuestionLabel.Text = "    " + Questions[i].QuestionText;

                }
            }

            //Create "display" controls (Previously logged Answers)
            int RowIndex = 0;
            foreach (Question Question in Questions)
            {
                for (int ColumnIndex = 1; ColumnIndex <= SolutionInfo.Count; ColumnIndex++)
                {
                    Guid SolutionId = SolutionInfo[ColumnIndex - 1].SolutionId; //The GV Columns are off by a margin of 1
                    int QuestionId = Question.QuestionId;
                    Answer Answer = sql.getSolutionAnswer(SolutionId, QuestionId, out error);
                    err.Text = error;

                    //Create Simple Answer Control
                    Label SimpleAnswerLabel = new Label();
                    SimpleAnswerLabel.ID = "SimpleAnswerLabel";
                    SimpleAnswerLabel.Font.Bold = true;
                    SimpleAnswerLabel.Text = SimpleAnswers[Answer.SimpleAnswerId];
                    //Create NewLine Control
                    LiteralControl NewLine1 = new LiteralControl("<br />");
                    //Create Answer Description Control
                    Label AnswerDescLabel = new Label();
                    AnswerDescLabel.ID = "AnswerDescLabel";
                    AnswerDescLabel.Text = Answer.AnswerDesc;
                    //Create NewLine2 Control
                    LiteralControl NewLine2 = new LiteralControl("<br />");
                    //Create Weight Description Control
                    Label WeightLabel = new Label();
                    WeightLabel.ID = "WeightLabel";
                    WeightLabel.Text = "Weight : " + Math.Round(Answer.Weight, 1).ToString();
                    //Create NewLine2 Control
                    LiteralControl NewLine3 = new LiteralControl("<br />");
                    //Create Score Description Control
                    Label ScoreLabel = new Label();
                    ScoreLabel.ID = "ScoreLabel";
                    ScoreLabel.Text = "Score : " + Math.Round(Answer.Score, 1).ToString();
                    //Add Controls to WorkbenchGV
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(SimpleAnswerLabel);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine1);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(AnswerDescLabel);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine2);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(WeightLabel);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine3);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(ScoreLabel);
                }
                RowIndex++;
            }

            //Set width of Quesiton Column
            for (int i = 0; i < Questions.Count; i++)
            {
                WorkbenchGV.Rows[i].Cells[0].Width = Unit.Pixel(200);
                WorkbenchGV.Rows[i].Cells[0].Wrap = true;
            }

            //Set width of the rest of the cells
            for (int RowInc = 0; RowInc < Questions.Count; RowInc++)
            {
                for (int ColumnInc = 1; ColumnInc <= SolutionInfo.Count; ColumnInc++)
                {
                    WorkbenchGV.Rows[RowInc].Cells[ColumnInc].Width = Unit.Pixel(200);
                    WorkbenchGV.Rows[RowInc].Cells[ColumnInc].Wrap = true;
                }
            }
        }

        protected void WorkbenchGV_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Get the LinkButton control in the first cell
                LinkButton _singleClickButton = (LinkButton)Page.FindControl("lnkDummy");

                // Get the javascript which is assigned to this linkbutton
                string _jsSingle = ClientScript.GetPostBackClientHyperlink(_singleClickButton, "");

                // If the page contains validator contorls then call
                // Page_ClientValidate before allowing the cell to be edited
                if (Page.Validators.Count > 0)
                    _jsSingle = _jsSingle.Insert(11, "if(Page_ClientValidate())");

                // Add Events to each editable cell
                for(int columnIndex = 1; columnIndex < e.Row.Cells.Count; columnIndex++)
                {
                    // Add the column index as the event argument parameter
                    string js = _jsSingle.Insert(_jsSingle.Length - 2, columnIndex.ToString());
                    // Add this javascript to the onclick attribute of the cell
                    e.Row.Cells[columnIndex].Attributes["onclick"] = js;
                    // Add a cursor style to the cell
                    e.Row.Cells[columnIndex].Attributes["style"] += "cursor:pointer;cursor:hand;";
                }
            }
        }

        protected void WorkbenchGV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridView _gridView = (GridView)sender;

            switch (e.CommandName)
            {
                case ("SingleClick"):
                    // Get row index
                    int _rowIndex = int.Parse(e.CommandArgument.ToString());
                    // Parse the event arg (Added in RowDataBound) to get the selected column index
                    int _columnIndex = int.Parse(Request.Form["__EVENTARGUMENT"]);
                    // Set the Gridview Selected Index
                    _gridView.SelectedIndex = _rowIndex;

                    //Do whatever you need to do
                    /*
                    Label lbl = new Label();
                    lbl.Text = "test";

                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls.Add(lbl);
                    */
                    this.Message.Text += "Single clicked Gridview row at index " + _rowIndex.ToString() + "on column index " + _columnIndex + "<br />";
                    break;

            }
        }

        /*
        protected void WorkbenchGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            int RowIndex = WorkbenchGV.SelectedIndex;
            int ColumnIndex = int.Parse(Request.Form["__EVENTARGUMENT"]);
            Label lbl = new Label();
            lbl.Text = "test";

            WorkbenchGV.SelectedRow.Cells[ColumnIndex].Controls.Add(lbl);
            //WorkbenchGV.SelectedRow.Cells[Index].FindControl("SimpleAnswerLabel").Visible = false;
        }
        */

    }
}