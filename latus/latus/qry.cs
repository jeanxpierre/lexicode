﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace latus
{
    public class qry
    {
        public const string IndustryData = "select IndustryId, IndustryType from Industry";
        public const string GeographyData = "select GeographyId, GeographyType from Geography";
        public const string NumEmployeeData = "select NumEmployeesId, NumEmployeesType from NumEmployees";
        public const string UseCaseData = "select UseCaseId, UseCaseName, UseCaseParentId from UseCase";
    }
}