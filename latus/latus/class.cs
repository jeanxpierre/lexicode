using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace latus
{
    public class CustomerInfo
    {
        public Guid CustomerId { get; set; }
        public string CustomerName { get; set; }
        public int IndustryId { get; set; }
        public string Headquarters { get; set; }
        public int GeographyId { get; set; }
        public int NumEmployeesId { get; set; }

        public CustomerInfo(string CustomerName, string IndustryId, string Headquarters, string GeographyId, string NumEmployeesId)
        {
            int IndustryIdTemp = 0;
            int GeographyIdTemp = 0;
            int NumEmployeesIdTemp = 0;

            this.CustomerId = Guid.NewGuid();
            this.CustomerName = CustomerName;
            int.TryParse(IndustryId, out IndustryIdTemp);
            this.IndustryId = IndustryIdTemp;
            this.Headquarters = Headquarters;
            int.TryParse(GeographyId, out GeographyIdTemp);
            this.GeographyId = GeographyIdTemp;
            int.TryParse(NumEmployeesId, out NumEmployeesIdTemp);
            this.NumEmployeesId = NumEmployeesIdTemp;
        }

        public CustomerInfo(Guid CustomerId, string CustomerName, int IndustryId, string Headquarters, int GeographyId, int NumEmployeesId)
        {
            this.CustomerId = CustomerId;
            this.CustomerName = CustomerName;
            this.IndustryId = IndustryId;
            this.Headquarters = Headquarters;
            this.GeographyId = GeographyId;
            this.NumEmployeesId = NumEmployeesId;
        }
    }
    public class VendorInfo
    {
        public Guid VendorId { get; set; }
        public string VendorName { get; set; }
        public string Founded { get; set; }
        public string Headquarters { get; set; }
        public string PublicPrivate { get; set; }
        public string NumEmployees { get; set; }

        public VendorInfo(string VendorName, string Founded, string Headquarters, string PublicPrivate, string NumEmployees)
        {
            this.VendorId = Guid.NewGuid();
            this.VendorName = VendorName;
            this.Founded = Founded;
            this.Headquarters = Headquarters;
            this.PublicPrivate = PublicPrivate;
            this.NumEmployees = NumEmployees;
        }

        public VendorInfo(Guid VendorId, string VendorName, string Founded, string Headquarters, string PublicPrivate, string NumEmployees)
        {
            this.VendorId = VendorId;
            this.VendorName = VendorName;
            this.Founded = Founded;
            this.Headquarters = Headquarters;
            this.PublicPrivate = PublicPrivate;
            this.NumEmployees = NumEmployees;
        }
    }
    public class SolutionInfo
    {
        public Guid SolutionId { get; set; }
        public Guid VendorId { get; set; }
        public string SolutionName { get; set; }
        public float SolutionVersion { get; set; }
        public List<int> UseCaseIds { get; set; }

        public SolutionInfo(Guid VendorId, string SolutionName, string SolutionVersion, List<String> UseCaseIds)
        {
            float SolutionVersionTemp = 0;
            int UseCaseIdTemp = 0;
            List<int> UseCaseTemp = new List<int>();

            this.SolutionId = Guid.NewGuid();
            this.VendorId = VendorId;
            this.SolutionName = SolutionName;
            float.TryParse(SolutionVersion, out SolutionVersionTemp);
            this.SolutionVersion = SolutionVersionTemp;

            foreach (string UseCaseId in UseCaseIds)
            {
                if (UseCaseId.Length > 0)
                {
                    int.TryParse(UseCaseId, out UseCaseIdTemp);
                    UseCaseTemp.Add(UseCaseIdTemp);
                    //this.UseCaseIds.Add(UseCaseIdTemp);
                }
            }
            this.UseCaseIds = UseCaseTemp;
        }

        public SolutionInfo(Guid SolutionId, Guid VendorId, string SolutionName, float SolutionVersion)
        {
            this.SolutionId = SolutionId;
            this.VendorId = VendorId;
            this.SolutionName = SolutionName;
            this.SolutionVersion = SolutionVersion;

            /*
            foreach (string UseCaseId in UseCaseIds)
            {
                if (UseCaseId.Length > 0)
                {
                    int.TryParse(UseCaseId, out UseCaseIdTemp);
                    UseCaseTemp.Add(UseCaseIdTemp);
                    //this.UseCaseIds.Add(UseCaseIdTemp);
                }
            }
            this.UseCaseIds = UseCaseTemp;
            */
        }
    }
    public class Question
    {
        public int QuestionId { get; set; }
        public string QuestionText { get; set; }

        public Question(int QuestionId, string QuestionText)
        {
            this.QuestionId = QuestionId;
            this.QuestionText = QuestionText;
        }
    }
    public class Answer
    {
        public Guid AnswerId { get; set; }
        public Guid CustomerOrSolutionId { get; set; }
        public int QuestionId { get; set; }
        public int SimpleAnswerId { get; set; }
        public string AnswerDesc { get; set; }
        public double Weight { get; set; }

        public Answer(Guid CustomerOrSolutionId, int QuestionId, string SimpleAnswer, string AnswerDesc, string Weight)
        {
            int SimpleAnswerIdTemp = 0;
            double WeightTemp = 0.0;

            this.AnswerId = Guid.NewGuid();
            this.CustomerOrSolutionId = CustomerOrSolutionId;
            this.QuestionId = QuestionId;
            int.TryParse(SimpleAnswer, out SimpleAnswerIdTemp);
            this.SimpleAnswerId = SimpleAnswerIdTemp;
            this.AnswerDesc = AnswerDesc;

            if(Weight != null)
            {
                double.TryParse(Weight, out WeightTemp);
                this.Weight = WeightTemp;
            }

        }

        public Answer(Guid AnswerId, Guid CustomerOrSolutionId, int QuestionId, int SimpleAnswerId, string AnswerDesc, double Weight)
        {

            this.AnswerId = AnswerId;
            this.CustomerOrSolutionId = CustomerOrSolutionId;
            this.QuestionId = QuestionId;
            this.SimpleAnswerId = SimpleAnswerId;
            this.AnswerDesc = AnswerDesc;
            this.Weight = Weight;

        }

        public Answer()
        {
            this.AnswerId = Guid.Empty;
            this.QuestionId = 0;
            this.SimpleAnswerId = 0;
            this.AnswerDesc = string.Empty;
            this.Weight = 0;
    }

    }
    public class Questionnaire1Answers
    {
        public List<Answer> AnswerList { get; set; }
        public List<int> UseCaseList { get; set; }

        public Questionnaire1Answers(List<Answer> AnswerList, List<string>UseCaseList)
        {
            this.AnswerList = AnswerList;
            int UseCaseIdTemp = 0;
            List<int> UseCaseIdTempList = new List<int>();

            foreach (string UseCaseId in UseCaseList)
            {
                if (UseCaseId.Length > 0)
                {
                    int.TryParse(UseCaseId, out UseCaseIdTemp);
                    UseCaseIdTempList.Add(UseCaseIdTemp);
                }
            }
            this.UseCaseList = UseCaseIdTempList;
        }
    }
    public class Questionnaire2Answers
    {
        public List<Answer> AnswerList { get; set; }

        public Questionnaire2Answers(List<Answer> AnswerList)
        {
            this.AnswerList = AnswerList;
        }
    }
    public class Questionnaire3Answers
    {
        public List<Answer> AnswerList;

        public Questionnaire3Answers(List<Answer> AnswerList)
        {
            this.AnswerList = AnswerList;
        }
    }


}