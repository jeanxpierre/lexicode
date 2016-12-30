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
    public partial class _default : System.Web.UI.Page
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
                                cmd.CommandText = qry.IndustryData;
                                cmd.CommandType = CommandType.Text;

                                CustomerIndustryDropdown.DataSource = cmd.ExecuteReader();
                                CustomerIndustryDropdown.DataTextField = "IndustryType";
                                CustomerIndustryDropdown.DataValueField = "IndustryId";
                                CustomerIndustryDropdown.DataBind();
                                conn.Close();
                            }
                            catch (Exception Ex)
                            {
                                // Do something :-)
                            }
                        }

                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            try
                            {
                                conn.Open();
                                cmd.CommandText = qry.GeographyData;
                                cmd.CommandType = CommandType.Text;

                                CustomerGeographyDropdown.DataSource = cmd.ExecuteReader();
                                CustomerGeographyDropdown.DataTextField = "GeographyType";
                                CustomerGeographyDropdown.DataValueField = "GeographyId";
                                CustomerGeographyDropdown.DataBind();
                                conn.Close();
                            }
                            catch (Exception Ex)
                            {
                                // Do something!
                            }
                        }

                        using (SqlCommand cmd = conn.CreateCommand())
                        {
                            try
                            {
                                conn.Open();
                                cmd.CommandText = qry.NumEmployeeData;
                                cmd.CommandType = CommandType.Text;

                                CustomerNumEmployeesDropdown.DataSource = cmd.ExecuteReader();
                                CustomerNumEmployeesDropdown.DataTextField = "NumEmployeesType";
                                CustomerNumEmployeesDropdown.DataValueField = "NumEmployeesId";
                                CustomerNumEmployeesDropdown.DataBind();
                                conn.Close();
                            }
                            catch (Exception Ex)
                            {
                                // Do something!
                            }
                        }
                    }
                    CustomerIndustryDropdown.Items.Insert(0, new ListItem("Select Industry", "0"));
                    CustomerGeographyDropdown.Items.Insert(0, new ListItem("Select Geography", "0"));
                    CustomerNumEmployeesDropdown.Items.Insert(0, new ListItem("Select Number of Employees", "0"));
                }
                catch (Exception Ex)
                {
                    //Do something!
                }
            }
        }

        protected void CustInfoSubmitButton_Click(object sender, EventArgs e)
        {
            List<CustomerInfo> CustInfo = new List<CustomerInfo>();

            CustInfo.Add(new CustomerInfo(CustomerNameTextBox.Text, CustomerIndustryDropdown.Text, CustomerHeadquartersTextBox.Text, CustomerGeographyDropdown.Text, CustomerNumEmployeesDropdown.Text));
            sql.updateCustomerInfo(CustInfo);
        }
    }
}