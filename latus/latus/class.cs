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
    }

}