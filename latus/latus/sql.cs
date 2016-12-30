using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace latus
{
    public class sql
    {
        public static void updateCustomerInfo(List<CustomerInfo> ci)
        {

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = @"Update CustomerInfo
                                            set CustomerName = @CustomerName,
                                            CustomerIndustryId = @CustomerIndustryId,
                                            CustomerHeadquarters = @CustomerHeadquarters,
                                            CustomerGeographyId = @CustomerGeographyId,
                                            CustomerNumEmployeesId = @CustomerNumEmployeesId
                                        WHERE CustomerId = @CustomerId
                                        IF NOT EXISTS ( SELECT CustomerName from CustomerInfo WHERE CustomerName = @CustomerName)
                                        BEGIN 
                                                INSERT INTO CustomerInfo (
                                                                           CustomerId, 
                                                                           CustomerName,
                                                                           CustomerIndustryId,
                                                                           CustomerHeadquarters,
                                                                           CustomerGeographyId,
                                                                           CustomerNumEmployeesId)
                                                VALUES (
                                                                           @CustomerId,
                                                                           @CustomerName,
                                                                           @CustomerIndustryId,
                                                                           @CustomerHeadquarters,
                                                                           @CustomerGeographyId,
                                                                           @CustomerNumEmployeesId)
                                        END";

                        cmd.Parameters.Add("@CustomerId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@CustomerName", SqlDbType.NVarChar, 20);
                        cmd.Parameters.Add("@CustomerIndustryId", SqlDbType.Int);
                        cmd.Parameters.Add("@CustomerHeadquarters", SqlDbType.NVarChar, 20);
                        cmd.Parameters.Add("@CustomerGeographyId", SqlDbType.Int);
                        cmd.Parameters.Add("@CustomerNumEmployeesId", SqlDbType.Int);

                        conn.Open();
                        foreach (CustomerInfo ciItem in ci)
                        {
                            cmd.Parameters["@CustomerId"].Value = ciItem.CustomerId;
                            cmd.Parameters["@CustomerName"].Value = ciItem.CustomerName;
                            cmd.Parameters["@CustomerIndustryId"].Value = ciItem.IndustryId;
                            cmd.Parameters["@CustomerHeadquarters"].Value = ciItem.Headquarters;
                            cmd.Parameters["@CustomerGeographyId"].Value = ciItem.GeographyId;
                            cmd.Parameters["@CustomerNumEmployeesId"].Value = ciItem.NumEmployeesId;

                            cmd.ExecuteNonQuery();

                        }
                            
                    }
                    catch(Exception Ex)
                    {
                        // Do something :-)
                    }
                }
            }
        }
    }
}