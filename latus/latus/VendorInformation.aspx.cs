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
    public partial class VendorInformation : System.Web.UI.Page
    {
        string error = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(ds.latusdb))
                    {
                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            try
                            {
                                conn.Open();
                                cmd.CommandText = qry.UseCaseData;
                                cmd.CommandType = CommandType.Text;

                                SolutionUseCaseCheckBox.DataSource = cmd.ExecuteReader();
                                SolutionUseCaseCheckBox.DataTextField = "UseCaseName";
                                SolutionUseCaseCheckBox.DataValueField = "UseCaseId";
                                SolutionUseCaseCheckBox.DataBind();
                                conn.Close();
                            }
                            catch (Exception Ex)
                            {
                                err.Text = Ex.ToString();
                            }
                        }
                    }
                }
                catch (Exception Ex)
                {
                    err.Text = Ex.ToString();
                }
            }
        }

        protected void VendorInfoSubmitButton_Click(object sender, EventArgs e)
        {
            List<VendorInfo> VendorInfo = new List<VendorInfo>();

            VendorInfo.Add(new VendorInfo(VendorNameTextBox.Text, VendorFoundedTextBox.Text, VendorHeadquartersTextBox.Text, VendorPublicPrivateTextBox.Text, VendorNumEmployeesTextBox.Text));
            sql.updateVendorInfo(VendorInfo, out error);
            err.Text = error;

            List<SolutionInfo> SolutionInfo = new List<SolutionInfo>();

            List<string> UseCaseIds = SolutionUseCaseCheckBox.Items.Cast<ListItem>()
                .Where(li => li.Selected)
                .Select(li => li.Value)
                .ToList();

            SolutionInfo.Add(new SolutionInfo(VendorInfo[0].VendorId, SolutionNameTextBox.Text, SolutionVersionTextBox.Text, UseCaseIds));
            sql.updateSolutionInfo(SolutionInfo, out error);
            err.Text = error;
            sql.updateSolutionUseCaseLink(SolutionInfo, out error);
            err.Text = error;

        }
    }
}