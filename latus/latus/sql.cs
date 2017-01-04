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
        public static void updateCustomerInfo(List<CustomerInfo> ci, out string error)
        {
            error = "";
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
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                    }
                }
            }
        }

        public static void updateVendorInfo(List<VendorInfo> vi, out string error)
        {
            error = "";
            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = @"Update VendorInfo
                                            set VendorName = @VendorName,
                                            VendorFounded = @VendorFounded,
                                            VendorHeadquarters = @VendorHeadquarters,
                                            VendorPublicPrivate = @VendorPublicPrivate,
                                            VendorNumEmployees = @VendorNumEmployees
                                        WHERE VendorId = @VendorId
                                        IF NOT EXISTS ( SELECT VendorName from VendorInfo WHERE VendorName = @VendorName)
                                        BEGIN 
                                                INSERT INTO VendorInfo (
                                                                           VendorId, 
                                                                           VendorName,
                                                                           VendorFounded,
                                                                           VendorHeadquarters,
                                                                           VendorPublicPrivate,
                                                                           VendorNumEmployees)
                                                VALUES (
                                                                           @VendorId,
                                                                           @VendorName,
                                                                           @VendorFounded,
                                                                           @VendorHeadquarters,
                                                                           @VendorPublicPrivate,
                                                                           @VendorNumEmployees)
                                        END";

                        cmd.Parameters.Add("@VendorId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@VendorName", SqlDbType.NVarChar, 20);
                        cmd.Parameters.Add("@VendorFounded", SqlDbType.NVarChar, 50);
                        cmd.Parameters.Add("@VendorHeadquarters", SqlDbType.NVarChar, 20);
                        cmd.Parameters.Add("@VendorPublicPrivate", SqlDbType.NVarChar, 10);
                        cmd.Parameters.Add("@VendorNumEmployees", SqlDbType.NVarChar, 20);

                        conn.Open();
                        foreach (VendorInfo viItem in vi)
                        {
                            cmd.Parameters["@VendorId"].Value = viItem.VendorId;
                            cmd.Parameters["@VendorName"].Value = viItem.VendorName;
                            cmd.Parameters["@VendorFounded"].Value = viItem.Founded;
                            cmd.Parameters["@VendorHeadquarters"].Value = viItem.Headquarters;
                            cmd.Parameters["@VendorPublicPrivate"].Value = viItem.PublicPrivate;
                            cmd.Parameters["@VendorNumEmployees"].Value = viItem.NumEmployees;

                            cmd.ExecuteNonQuery();

                        }

                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                    }
                }
            }
        }

        public static void updateSolutionInfo(List<SolutionInfo> si, out string error)
        {
            error = "";
            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = @"Update SolutionInfo
                                            set VendorId = @VendorId,
                                            SolutionName = @SolutionName
                                        WHERE SolutionId = @SolutionId
                                        IF NOT EXISTS ( SELECT SolutionName from SolutionInfo WHERE SolutionName = @SolutionName)
                                        BEGIN 
                                                INSERT INTO SolutionInfo (
                                                                           SolutionId, 
                                                                           VendorId,
                                                                           SolutionName,
                                                                           SolutionVersion)
                                                VALUES (
                                                                           @SolutionId,
                                                                           @VendorId,
                                                                           @SolutionName,
                                                                           @SolutionVersion)
                                        END";

                        cmd.Parameters.Add("@SolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@VendorId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@SolutionName", SqlDbType.NVarChar, 50);
                        cmd.Parameters.Add("@SolutionVersion", SqlDbType.Decimal);
                        cmd.Parameters["@SolutionVersion"].Precision = 4;
                        cmd.Parameters["@SolutionVersion"].Scale = 2;

                        conn.Open();
                        foreach (SolutionInfo siItem in si)
                        {
                            cmd.Parameters["@SolutionId"].Value = siItem.SolutionId;
                            cmd.Parameters["@VendorId"].Value = siItem.VendorId;
                            cmd.Parameters["@SolutionName"].Value = siItem.SolutionName;
                            cmd.Parameters["@SolutionVersion"].Value = siItem.SolutionVersion;

                            cmd.ExecuteNonQuery();

                        }

                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                    }
                }
            }
        }

        public static void updateSolutionUseCaseLink(List<SolutionInfo> si, out string error)
        {
            error = "";
            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {

                        // Add delete logic to CommandText
                        cmd.CommandText = @"
                                    IF NOT EXISTS ( SELECT CustomerSolutionId from CustSolUseCaseLink 
                                                    WHERE CustomerSolutionId = @CustomerSolutionId AND UseCaseId = @UseCaseId)
                                    BEGIN 
                                            INSERT INTO CustSolUseCaseLink (
                                                                        CustomerSolutionId,
                                                                        UseCaseId)
                                            VALUES (
                                                                        @CustomerSolutionId,
                                                                        @UseCaseId)
                                    END";

                        cmd.Parameters.Add("@CustomerSolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@UseCaseId", SqlDbType.Int);

                        conn.Open();
                        foreach (SolutionInfo siItem in si)
                        {
                            foreach (int UseCaseId in siItem.UseCaseIds)
                            {
                                cmd.Parameters["@CustomerSolutionId"].Value = siItem.SolutionId;
                                cmd.Parameters["@UseCaseId"].Value = UseCaseId;

                                cmd.ExecuteNonQuery();
                            }
                        }

                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                    }
                }
            }
        }

        public static void updateQuestionnaire1Answers(List<Questionnaire1Answers> q1, out string error)
        {
            error = "";
            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        
                        cmd.CommandText = @"
                                    IF NOT EXISTS ( SELECT AnswerId from Answer 
                                                    WHERE AnswerId = @AnswerId AND QuestionId = @QuestionId)
                                    BEGIN 
                                            INSERT INTO Answer (
                                                                        AnswerId,
                                                                        CustomerOrSolutionId,
                                                                        QuestionId,
                                                                        SimpleAnswerId,
                                                                        AnswerDesc,
                                                                        ScorableBoolId,
                                                                        Score,
                                                                        Weight)
                                            VALUES (
                                                                        @AnswerId,
                                                                        @CustomerOrSolutionId,
                                                                        @QuestionId,
                                                                        @SimpleAnswerId,
                                                                        @AnswerDesc,
                                                                        @ScorableBoolId,
                                                                        @Score,
                                                                        @Weight)
                                    END";

                        cmd.Parameters.Add("@AnswerId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@CustomerOrSolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@QuestionId", SqlDbType.Int);
                        cmd.Parameters.Add("@SimpleAnswerId", SqlDbType.Int);
                        cmd.Parameters.Add("@AnswerDesc", SqlDbType.NVarChar, 128);
                        cmd.Parameters.Add("@ScorableBoolId", SqlDbType.Int);
                        cmd.Parameters.Add("@Score", SqlDbType.Decimal);
                        cmd.Parameters["@Score"].Precision = 3;
                        cmd.Parameters["@Score"].Scale = 1;
                        cmd.Parameters.Add("@Weight", SqlDbType.Decimal);
                        cmd.Parameters["@Weight"].Precision = 3;
                        cmd.Parameters["@Weight"].Scale = 1;

                        conn.Open();

                        foreach (Questionnaire1Answers q1Item in q1)
                        {
                            foreach (Answer Answer in q1Item.AnswerList)
                            {
                                cmd.Parameters["@AnswerId"].Value = Answer.AnswerId;
                                cmd.Parameters["@CustomerOrSolutionId"].Value = Answer.CustomerOrSolutionId;
                                cmd.Parameters["@QuestionId"].Value = Answer.QuestionId;
                                cmd.Parameters["@SimpleAnswerId"].Value = Answer.SimpleAnswerId;
                                cmd.Parameters["@AnswerDesc"].Value = Answer.AnswerDesc;
                                cmd.Parameters["@ScorableBoolId"].Value = Answer.ScorableBoolId;
                                cmd.Parameters["@Score"].Value = DBNull.Value;
                                cmd.Parameters["@Weight"].Value = Answer.Weight; 
                                cmd.ExecuteNonQuery();
                            }
                        }

                        conn.Close();
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                    }
                    try
                    {

                        // Add delete logic to CommandText
                        cmd.CommandText = @"
                                    IF NOT EXISTS ( SELECT CustomerSolutionId from CustSolUseCaseLink 
                                                    WHERE CustomerSolutionId = @CustomerSolutionId AND UseCaseId = @UseCaseId)
                                    BEGIN 
                                            INSERT INTO CustSolUseCaseLink (
                                                                        CustomerSolutionId,
                                                                        UseCaseId)
                                            VALUES (
                                                                        @CustomerSolutionId,
                                                                        @UseCaseId)
                                    END";

                        cmd.Parameters.Add("@CustomerSolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@UseCaseId", SqlDbType.Int);

                        conn.Open();
                        foreach (Questionnaire1Answers q1Item in q1)
                        {
                            foreach (int UseCaseId in q1Item.UseCaseList)
                            {
                                cmd.Parameters["@CustomerSolutionId"].Value = q1Item.AnswerList[0].CustomerOrSolutionId;
                                cmd.Parameters["@UseCaseId"].Value = UseCaseId;
                                cmd.ExecuteNonQuery();
                            }
                        }

                        conn.Close();

                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                    }

                }
            }
        }

        public static void updateQuestionnaire2Answers(List<Questionnaire2Answers> q2, out string error)
        {
            error = "";
            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {

                        cmd.CommandText = @"
                                    IF NOT EXISTS ( SELECT AnswerId from Answer 
                                                    WHERE AnswerId = @AnswerId AND QuestionId = @QuestionId)
                                    BEGIN 
                                            INSERT INTO Answer (
                                                                        AnswerId,
                                                                        CustomerOrSolutionId,
                                                                        QuestionId,
                                                                        SimpleAnswerId,
                                                                        AnswerDesc,
                                                                        ScorableBoolId,
                                                                        Score,
                                                                        Weight)
                                            VALUES (
                                                                        @AnswerId,
                                                                        @CustomerOrSolutionId,
                                                                        @QuestionId,
                                                                        @SimpleAnswerId,
                                                                        @AnswerDesc,
                                                                        @ScorableBoolId,
                                                                        @Score,
                                                                        @Weight)
                                    END";

                        cmd.Parameters.Add("@AnswerId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@CustomerOrSolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@QuestionId", SqlDbType.Int);
                        cmd.Parameters.Add("@SimpleAnswerId", SqlDbType.Int);
                        cmd.Parameters.Add("@AnswerDesc", SqlDbType.NVarChar, 128);
                        cmd.Parameters.Add("@ScorableBoolId", SqlDbType.Int);
                        cmd.Parameters.Add("@Score", SqlDbType.Int);
                        cmd.Parameters["@Score"].Precision = 3;
                        cmd.Parameters["@Score"].Scale = 1;
                        cmd.Parameters.Add("@Weight", SqlDbType.Int);
                        cmd.Parameters["@Weight"].Precision = 3;
                        cmd.Parameters["@Weight"].Scale = 1;

                        conn.Open();

                        foreach (Questionnaire2Answers q2Item in q2)
                        {
                            foreach (Answer Answer in q2Item.AnswerList)
                            {
                                cmd.Parameters["@AnswerId"].Value = Answer.AnswerId;
                                cmd.Parameters["@CustomerOrSolutionId"].Value = Answer.CustomerOrSolutionId;
                                cmd.Parameters["@QuestionId"].Value = Answer.QuestionId;
                                cmd.Parameters["@SimpleAnswerId"].Value = Answer.SimpleAnswerId;
                                cmd.Parameters["@AnswerDesc"].Value = Answer.AnswerDesc;
                                cmd.Parameters["@ScorableBoolId"].Value = Answer.ScorableBoolId;
                                cmd.Parameters["@Score"].Value = DBNull.Value;
                                cmd.Parameters["@Weight"].Value = Answer.Weight;
                                cmd.ExecuteNonQuery();
                            }
                        }

                        conn.Close();
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                    }
                   
                }
            }
        }

        
    }
}