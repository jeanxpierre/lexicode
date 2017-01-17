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
        //Folowing update Answers may need to include Score (null) and Knowledgebase (true?)
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
                                                                        Weight)
                                            VALUES (
                                                                        @AnswerId,
                                                                        @CustomerOrSolutionId,
                                                                        @QuestionId,
                                                                        @SimpleAnswerId,
                                                                        @AnswerDesc,
                                                                        @Weight)
                                    END";

                        cmd.Parameters.Add("@AnswerId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@CustomerOrSolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@QuestionId", SqlDbType.Int);
                        cmd.Parameters.Add("@SimpleAnswerId", SqlDbType.Int);
                        cmd.Parameters.Add("@AnswerDesc", SqlDbType.NVarChar, 128);
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
                                                                        Weight)
                                            VALUES (
                                                                        @AnswerId,
                                                                        @CustomerOrSolutionId,
                                                                        @QuestionId,
                                                                        @SimpleAnswerId,
                                                                        @AnswerDesc,
                                                                        @Weight)
                                    END";

                        cmd.Parameters.Add("@AnswerId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@CustomerOrSolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@QuestionId", SqlDbType.Int);
                        cmd.Parameters.Add("@SimpleAnswerId", SqlDbType.Int);
                        cmd.Parameters.Add("@AnswerDesc", SqlDbType.NVarChar, 128);
                        cmd.Parameters.Add("@Weight", SqlDbType.Decimal);
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

        public static void updateQuestionnaire3Answers(List<Questionnaire3Answers> q3, out string error)
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
                                                                        Weight)
                                            VALUES (
                                                                        @AnswerId,
                                                                        @CustomerOrSolutionId,
                                                                        @QuestionId,
                                                                        @SimpleAnswerId,
                                                                        @AnswerDesc,
                                                                        @Weight)
                                    END";

                        cmd.Parameters.Add("@AnswerId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@CustomerOrSolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@QuestionId", SqlDbType.Int);
                        cmd.Parameters.Add("@SimpleAnswerId", SqlDbType.Int);
                        cmd.Parameters.Add("@AnswerDesc", SqlDbType.NVarChar, 128);
                        cmd.Parameters.Add("@Weight", SqlDbType.Decimal);
                        cmd.Parameters["@Weight"].Precision = 3;
                        cmd.Parameters["@Weight"].Scale = 1;

                        conn.Open();

                        foreach (Questionnaire3Answers q3Item in q3)
                        {
                            foreach (Answer Answer in q3Item.AnswerList)
                            {
                                cmd.Parameters["@AnswerId"].Value = Answer.AnswerId;
                                cmd.Parameters["@CustomerOrSolutionId"].Value = Answer.CustomerOrSolutionId;
                                cmd.Parameters["@QuestionId"].Value = Answer.QuestionId;
                                cmd.Parameters["@SimpleAnswerId"].Value = Answer.SimpleAnswerId;
                                cmd.Parameters["@AnswerDesc"].Value = Answer.AnswerDesc;
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

        public static List<int> getCustomerUseCase(Guid CustomerId, out string error)
        {
            error = "";
            List<int> UseCaseList = new List<int>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {

                        cmd.CommandText = "SELECT UseCaseId FROM CustSolUseCaseLink WHERE CustomerSolutionId = @CustomerId";
                        cmd.Parameters.Add("CustomerId", SqlDbType.UniqueIdentifier);

                        cmd.CommandType = CommandType.Text;


                        conn.Open();

                        cmd.Parameters["@CustomerId"].Value = CustomerId;
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while(dr.Read())
                            {
                                UseCaseList.Add((int)dr["UseCaseId"]);
                            }
                        }

                        conn.Close();
                        return UseCaseList;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return UseCaseList;
                    }

                }
            }
        }

        public static Dictionary<int, String> getSimpleAnswers(out string error)
        {
            error = "";
            Dictionary<int, String> SimpleAnswers = new Dictionary<int, string>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM SimpleAnswer";
                        cmd.CommandType = CommandType.Text;
                        conn.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                int SAId = func.ConvertDBint(dr["SimpleAnswerId"]);
                                string SA = func.ConvertDBstring(dr["SimpleAnswer"]);
                                SimpleAnswers.Add(SAId, SA);
                            }
                        }

                        conn.Close();

                        return SimpleAnswers;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return SimpleAnswers;
                    }

                }
            }

        }

        public static List<int> getUseCaseQuestionIds(List<int> UseCaseIds, out string error)
        {
            error = "";
            List<int> QuestionIds = new List<int>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        foreach(int UseCaseId in UseCaseIds)
                        {
                            cmd.CommandText = "SELECT QuestionId FROM QuestionTagLink WHERE TagId = @UseCaseId";
                            cmd.Parameters.Add("UseCaseId", SqlDbType.Int);

                            cmd.CommandType = CommandType.Text;


                            conn.Open();

                            cmd.Parameters["@UseCaseId"].Value = UseCaseId;
                            using (SqlDataReader dr = cmd.ExecuteReader())
                            {
                                while (dr.Read())
                                {
                                    QuestionIds.Add((int)dr["QuestionId"]);
                                }
                            }

                            conn.Close();
                        }
                        
                        return QuestionIds;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return QuestionIds;
                    }

                }
            }
        }

        public static List<Question> getSolutionQuestionsFromId(List<int> QuestionIds, out string error)
        {
            error = "";
            List<Question> Questions = new List<Question>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        foreach (int QuestionId in QuestionIds)
                        {
                            cmd.CommandText = "SELECT Question FROM Question WHERE QuestionId = @QuestionId AND QuestionnaireId = 4";
                            cmd.Parameters.Add("QuestionId", SqlDbType.Int);

                            cmd.CommandType = CommandType.Text;

                            conn.Open();
                            cmd.Parameters["@QuestionId"].Value = QuestionId;

                            using (SqlDataReader dr = cmd.ExecuteReader())
                            {
                                while (dr.Read())
                                {
                                    Questions.Add(new latus.Question((int)dr["QuestionId"], (string)dr["Question"], (int)dr["QuestionCategoryId"]));
                                }
                            }

                            conn.Close();
                        }

                        return Questions;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return Questions;
                    }

                }
            }
        }

        public static List<Question> getSolutionQuestions(out string error)
        {
            error = "";
            List<Question> Questions = new List<Question>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM Question WHERE QuestionnaireId = 4";
                        cmd.CommandType = CommandType.Text;
                        conn.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                Questions.Add(new Question((int)dr["QuestionId"], (string)dr["Question"], (int)dr["QuestionCategoryId"]));
                            }
                        }

                        conn.Close();

                        return Questions;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return Questions;
                    }

                }
            }
        }

        public static List<CustomerInfo> getCustomerInfo(out string error)
        {
            error = "";
            List<CustomerInfo> CustomerInfo = new List<CustomerInfo>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM CustomerInfo";
                        cmd.CommandType = CommandType.Text;
                        conn.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                Guid TempCustomerId = (Guid)(dr["CustomerId"] != null ? dr["CustomerId"] : Guid.NewGuid()); 
                                string TempCustomerName = (string)(dr["CustomerName"] != null ? dr["CustomerName"] : string.Empty); 
                                int TempIndustryId = (int)(dr["CustomerIndustryId"] != null ? dr["CustomerIndustryId"] : 0); 
                                string TempHeadquarters = (string)(dr["CustomerHeadquarters"] != null ? dr["CustomerHeadquarters"] : string.Empty); 
                                int TempGeographyId = (int)(dr["CustomerGeographyId"] != null ? dr["CustomerGeographyId"] : 0); 
                                int TempNumEmployeesId = (int)(dr["CustomerNumEmployeesId"] != null ? dr["CustomerNumEmployeesId"] : 0); 
                                CustomerInfo.Add(new CustomerInfo(TempCustomerId, TempCustomerName, TempIndustryId, TempHeadquarters, TempGeographyId, TempNumEmployeesId));
                            }
                        }

                        conn.Close();

                        return CustomerInfo;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return CustomerInfo;
                    }

                }
            }
        }

        public static List<VendorInfo> getVendorInfo(out string error)
        {
            error = "";
            List<VendorInfo> VendorInfo = new List<VendorInfo>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM VendorInfo";
                        cmd.CommandType = CommandType.Text;
                        conn.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                Guid TempVendorId = (Guid)(dr["VendorId"] != null ? dr["VendorId"] : Guid.Empty);
                                string TempVendorName = (string)(dr["VendorName"] != null ? dr["VendorName"] : string.Empty);
                                string TempVendorFounded = (string)(dr["VendorFounded"] != null ? dr["VendorFounded"] : string.Empty);
                                string TempVendorHeadquarters = (string)(dr["VendorHeadquarters"] != null ? dr["VendorHeadquarters"] : string.Empty);
                                string TempVendorPublicPrivate = (string)(dr["VendorPublicPrivate"] != null ? dr["VendorPublicPrivate"] : string.Empty);
                                string TempVendorNumEmployees = (string)(dr["VendorNumEmployees"] != null ? dr["VendorNumEmployees"] : string.Empty);
                                VendorInfo.Add(new VendorInfo(TempVendorId, TempVendorName, TempVendorFounded, TempVendorHeadquarters, TempVendorPublicPrivate, TempVendorNumEmployees));
                            }
                        }

                        conn.Close();

                        return VendorInfo;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return VendorInfo;
                    }

                }
            }
        }

        public static List<SolutionInfo> getSolutionInfo(out string error)
        {
            error = "";
            List<SolutionInfo> SolutionInfo = new List<SolutionInfo>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM SolutionInfo";
                        cmd.CommandType = CommandType.Text;
                        conn.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                Guid SolutionId = (Guid)(dr["SolutionId"] != null ? dr["SolutionId"] : Guid.Empty);
                                Guid VendorId = (Guid)(dr["VendorId"] != null ? dr["VendorId"] : Guid.Empty);
                                string SolutionName = (string)(dr["SolutionName"] != null ? dr["SolutionName"] : string.Empty);
                                string temp = (dr["SolutionVersion"].ToString() != null ? dr["SolutionVersion"].ToString() : "0");
                                float SolutionVersion = float.Parse(temp, System.Globalization.CultureInfo.InvariantCulture);
                                //float SolutionVersion = (float)temp;
                                SolutionInfo.Add(new SolutionInfo(SolutionId, VendorId, SolutionName, SolutionVersion));
                            }
                        }

                        conn.Close();

                        return SolutionInfo;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return SolutionInfo;
                    }

                }
            }
        }

        public static Answer getSolutionAnswer(Guid SolutionId, int QuestionId, out string error)
        {
            error = "";
            Answer newAnswer = new Answer();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM Answer WHERE CustomerOrSolutionId = @SolutionId AND QuestionId = @QuestionId";
                        cmd.Parameters.Add("@SolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@QuestionId", SqlDbType.Int);
                        cmd.CommandType = CommandType.Text;

                        conn.Open();

                        cmd.Parameters["@SolutionId"].Value = SolutionId;
                        cmd.Parameters["@QuestionId"].Value = QuestionId;

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                Guid TempAnswerId = func.ConvertDBGuid(dr["AnswerId"]);
                                int TempSimpleAnswerId = func.ConvertDBint(dr["SimpleAnswerId"]);
                                string TempAnswerDesc = func.ConvertDBstring(dr["AnswerDesc"]);
                                float TempWeight = func.ConvertDBfloat(dr["Weight"]);
                                float TempScore = func.ConvertDBfloat(dr["Score"]);
                                int TempKnowledgebase = func.ConvertDBint(dr["KnowledgeBaseBooleanId"]);
                                Boolean TempBool = false;
                                if (TempKnowledgebase == 1)
                                    TempBool = true;
                                newAnswer = new Answer(TempAnswerId, SolutionId, QuestionId, TempSimpleAnswerId, TempAnswerDesc, TempWeight, TempScore, TempBool);
                            }
                        }

                        conn.Close();

                        return newAnswer;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return newAnswer;
                    }

                }
            }
        }

        public static List<List<string>> getAllSolutionAnswerDesc(List<Guid> SolutionIds, List<int> QuestionIds, out string error)
        {
            error = "";
            List<List<string>> AnswerDescriptions = new List<List<string>>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM Answer WHERE CustomerOrSolutionId = @SolutionId AND QuestionId = @QuestionId";
                        cmd.Parameters.Add("@SolutionId", SqlDbType.UniqueIdentifier);
                        cmd.Parameters.Add("@QuestionId", SqlDbType.Int);
                        cmd.CommandType = CommandType.Text;


                        foreach(Guid SolutionId in SolutionIds)
                        {
                            List<string> SolutionDescList = new List<string>();

                            foreach(int QuestionId in QuestionIds)
                            {
                                conn.Open();
                                cmd.Parameters["@SolutionId"].Value = SolutionId;
                                cmd.Parameters["@QuestionId"].Value = QuestionId;
                                using (SqlDataReader dr = cmd.ExecuteReader())
                                {
                                    while (dr.Read())
                                    {
                                       SolutionDescList.Add((string)(dr["AnswerDesc"] != null ? dr["AnswerDesc"] : string.Empty));
                                    }
                                }

                                conn.Close();
                            }
                            AnswerDescriptions.Add(SolutionDescList);
                        }

                        return AnswerDescriptions;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return AnswerDescriptions;
                    }

                }
            }
        }

        public static Dictionary<int, string> getQuestionCategories(out string error)
        {
            error = "";
            Dictionary<int, string> QuestionCategories = new Dictionary<int, string>();

            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        cmd.CommandText = "SELECT * FROM QuestionCategory";
                        cmd.CommandType = CommandType.Text;
                        conn.Open();

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            while (dr.Read())
                            {
                                int QuestionCategoryId = func.ConvertDBint(dr["QuestionCategoryId"]);
                                string QuestionCategory = func.ConvertDBstring(dr["QuestionCategory"]);

                                QuestionCategories.Add(QuestionCategoryId, QuestionCategory);
                            }
                        }

                        conn.Close();

                        return QuestionCategories;
                    }
                    catch (Exception Ex)
                    {
                        error = Ex.ToString();
                        return QuestionCategories;
                    }

                }
            }
        }
    }
}