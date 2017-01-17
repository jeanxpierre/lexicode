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

        private const int _firstEditCellIndex = 2;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (WorkbenchGV.SelectedIndex > -1)
            {
                // Call UpdateRow on every postback
                this.WorkbenchGV.UpdateRow(this.WorkbenchGV.SelectedIndex, false);
            }

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
                NewRow[1] = Question.QuestionText;
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
                    WorkbenchGV.Rows[i].Cells[1].Controls.Add(QuestionCategoryLabel);
                    WorkbenchGV.Rows[i].Cells[1].Controls.Add(NewLine);
                    WorkbenchGV.Rows[i].Cells[1].Controls.Add(QuestionLabel);
                }
                else
                {
                    Label QuestionLabel = new Label();
                    QuestionLabel.TabIndex = 1;
                    QuestionLabel.Text = "    " + Questions[i].QuestionText;
                    WorkbenchGV.Rows[i].Cells[1].Controls.Add(QuestionLabel);
                }
            }

            //Create "display" controls (Previously logged Answers)
            int RowIndex = 0;
            foreach (Question Question in Questions)
            {
                for (int ColumnIndex = 2; ColumnIndex <= SolutionInfo.Count + 1; ColumnIndex++)
                {
                    Guid SolutionId = SolutionInfo[ColumnIndex - 2].SolutionId; //The GV Columns are off by a margin of 2
                    int QuestionId = Question.QuestionId;
                    Answer Answer = sql.getSolutionAnswer(SolutionId, QuestionId, out error);
                    err.Text = error;

                    // ADD ALL ANSWER DISPLAY CONTROLS //

                    //Create Simple Answer Control
                    Label SimpleAnswerLabel = new Label();
                    SimpleAnswerLabel.ID = "SimpleAnswerLabel-" + RowIndex + "-" + ColumnIndex;
                    SimpleAnswerLabel.Font.Bold = true;
                    SimpleAnswerLabel.Text = SimpleAnswers[Answer.SimpleAnswerId];

                    //Create NewLine Control
                    LiteralControl NewLine1 = new LiteralControl("<br />");

                    //Create Answer Description Control
                    Label AnswerDescLabel = new Label();
                    AnswerDescLabel.ID = "AnswerDescLabel-" + RowIndex + "-" + ColumnIndex;
                    AnswerDescLabel.Text = Answer.AnswerDesc;

                    //Create NewLine2 Control
                    LiteralControl NewLine2 = new LiteralControl("<br />");

                    //Create Weight Description Control
                    Label WeightLabel = new Label();
                    WeightLabel.ID = "WeightLabel-" + RowIndex + "-" + ColumnIndex;
                    WeightLabel.Text = "Weight : " + Math.Round(Answer.Weight, 1).ToString();

                    //Create NewLine2 Control
                    LiteralControl NewLine3 = new LiteralControl("<br />");

                    //Create Score Description Control
                    Label ScoreLabel = new Label();
                    ScoreLabel.ID = "ScoreLabel-" + RowIndex + "-" + ColumnIndex;
                    ScoreLabel.Text = "Score : " + Math.Round(Answer.Score, 1).ToString();

                    //Add Controls to WorkbenchGV
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(SimpleAnswerLabel);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine1);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(AnswerDescLabel);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine2);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(WeightLabel);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine3);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(ScoreLabel);

                    // ADD ALL ANSWER EDIT CONTROLS //

                    //Create Simple Answer Control
                    RadioButtonList SimpleAnswerRadio = new RadioButtonList();
                    SimpleAnswerRadio.Visible = false;
                    SimpleAnswerRadio.ID = "SimpleAnswerRadio-" + RowIndex + "-" + ColumnIndex;
                    SimpleAnswerRadio.RepeatDirection = RepeatDirection.Horizontal;
                    SimpleAnswerRadio.AutoPostBack = false;
                    foreach (int key in SimpleAnswers.Keys)
                    {
                        SimpleAnswerRadio.Items.Add(new ListItem(SimpleAnswers[key], key.ToString()));
                    }

                    //Create Answer Description Control
                    TextBox AnswerDescTextbox = new TextBox();
                    AnswerDescTextbox.Visible = false;
                    AnswerDescTextbox.Height = Unit.Pixel(50);
                    AnswerDescTextbox.TextMode = TextBoxMode.MultiLine;
                    AnswerDescTextbox.Wrap = true;
                    AnswerDescTextbox.ID = "AnswerDescTextbox-" + RowIndex + "-" + ColumnIndex;
                    AnswerDescTextbox.AutoPostBack = false;
                    AnswerDescTextbox.Text = Answer.AnswerDesc;

                    //Create NewLine2 Control
                    LiteralControl NewLine5 = new LiteralControl("<br />");
                    NewLine5.Visible = false;

                    //Create Weight Description Control
                    TextBox WeightTextbox = new TextBox();
                    WeightTextbox.Visible = false;
                    WeightTextbox.ID = "WeightTextbox-" + RowIndex + "-" + ColumnIndex;
                    WeightTextbox.AutoPostBack = false;
                    WeightTextbox.Text = "Weight (Ex: " + Math.Round(Answer.Weight, 1).ToString() + " )";

                    //Create NewLine2 Control
                    LiteralControl NewLine6 = new LiteralControl("<br />");
                    NewLine6.Visible = false;

                    //Create Score Description Control
                    TextBox ScoreTextbox = new TextBox();
                    ScoreTextbox.Visible = false;
                    ScoreTextbox.ID = "ScoreTextbox-" + RowIndex + "-" + ColumnIndex;
                    ScoreTextbox.AutoPostBack = false;
                    ScoreTextbox.Text = "Score (Ex: " + Math.Round(Answer.Score, 1).ToString() + " )";

                    //Add Controls to WorkbenchGV
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(SimpleAnswerRadio);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(AnswerDescTextbox);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine5);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(WeightTextbox);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(NewLine6);
                    WorkbenchGV.Rows[RowIndex].Cells[ColumnIndex].Controls.Add(ScoreTextbox);
                }
                RowIndex++;
            }

            //Set width of Quesiton Column
            for (int i = 0; i < Questions.Count; i++)
            {
                WorkbenchGV.Rows[i].Cells[1].Width = Unit.Pixel(200);
                WorkbenchGV.Rows[i].Cells[1].Wrap = true;
            }

            //Set width of the rest of the cells
            for (int RowInc = 0; RowInc < Questions.Count; RowInc++)
            {
                for (int ColumnInc = 2; ColumnInc <= SolutionInfo.Count + 1; ColumnInc++)
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
                LinkButton _singleClickButton = (LinkButton)e.Row.Cells[0].Controls[0];
                // Get the javascript which is assigned to this linkbutton
                string _jsSingle = ClientScript.GetPostBackClientHyperlink(_singleClickButton, "");

                // If the page contains validator contorls then call
                // Page_ClientValidate before allowing the cell to be edited
                if (Page.Validators.Count > 0)
                    _jsSingle = _jsSingle.Insert(11, "if(Page_ClientValidate())");

                // Add Events to each editable cell
                for(int columnIndex = _firstEditCellIndex; columnIndex < e.Row.Cells.Count; columnIndex++)
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
            switch (e.CommandName)
            {
                case ("SingleClick"):

                    // Get row index
                    int _rowIndex = int.Parse(e.CommandArgument.ToString());
                    // Parse the event arg (Added in RowDataBound) to get the selected column index
                    int _columnIndex = int.Parse(Request.Form["__EVENTARGUMENT"]);

                    WorkbenchGV.SelectedIndex = _rowIndex;

                    // Stop "On Click" event for this cell
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Attributes["onclick"] = "";

                    // Make Display Controls in this cell invisible (Answer Display)
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[0].Visible = false;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[1].Visible = false;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[2].Visible = false;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[3].Visible = false;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[4].Visible = false;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[5].Visible = false;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[6].Visible = false;

                    // Make Edit Controls in this cell visible (Answer Edit)
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[7].Visible = true;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[8].Visible = true;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[9].Visible = true;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[10].Visible = true;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[11].Visible = true;
                    WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].Controls[12].Visible = true;

                    break;

            }
        }

        protected void WorkbenchGV_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            this.Message.Text = "Row is being updated.";
            /*
            if (e.RowIndex > -1)
            {
                // Loop though the columns to find a cell in edit mode
                for (int i = _firstEditCellIndex; i < WorkbenchGV.Columns.Count; i++)
                {

                    // Get row index
                    int _rowIndex = e.RowIndex;
                    // Parse the event arg (Added in RowDataBound) to get the selected column index
                    int _columnIndex = int.Parse(Request.Form["__EVENTARGUMENT"]);

                    // Update Display controls with new values
                    string ControlEnding = "-" + _rowIndex + "-" + _columnIndex;

                    // Update Simple Answer Control
                    Label SimpleAnswerLabel = (Label)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("SimpleAnswerLabel" + ControlEnding);
                    RadioButtonList SimpleAnswerRadio = (RadioButtonList)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("SimpleAnswerRadio" + ControlEnding);
                    SimpleAnswerLabel.Text = SimpleAnswerRadio.SelectedValue;
                    //This may give value not text.

                    //Create Answer Description Control
                    Label AnswerDescLabel = (Label)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("AnswerDescLabel" + ControlEnding);
                    TextBox AnswerDescTextbox = (TextBox)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("AnswerDescTextbox" + ControlEnding);
                    AnswerDescLabel.Text = AnswerDescTextbox.Text;

                    //Create Weight Description Control
                    Label WeightLabel = (Label)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("WeightLabel" + ControlEnding);
                    TextBox WeightTextbox = (TextBox)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("WeightTextbox" + ControlEnding);
                    WeightLabel.Text = WeightTextbox.Text;

                    //Create Score Description Control
                    Label ScoreLabel = (Label)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("ScoreLabel" + ControlEnding);
                    TextBox ScoreTextbox = (TextBox)WorkbenchGV.Rows[_rowIndex].Cells[_columnIndex].FindControl("ScoreTextbox" + ControlEnding);
                    ScoreLabel.Text = ScoreTextbox.Text;

                }
            }
            */

            // Clear the selected index to prevent 
            // another update on the next postback
            WorkbenchGV.SelectedIndex = -1;

        }
        //Function not firing. Figure out how to call RowUpdate on defocus of cell

    }
}