using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace latus
{
    public class func
    {
        public static string ConvertDBstring(object dbStrObj)
        {
            string dbstr = "";
            try
            {
                dbstr = dbStrObj.ToString();
                return dbstr;
            }
            catch
            {
                return dbstr;
            }
        }
        public static int ConvertDBint(object dbIntObj)
        {
            int dbint = 0;
            try
            {
                dbint = (int)dbIntObj;
                return dbint;
            }
            catch
            {
                return dbint;
            }
        }
        public static float ConvertDBfloat(object dbFloatObj)
        {
            float dbfloat = 0.0F;
            try
            {
                dbfloat = Convert.ToSingle(dbFloatObj);
                return dbfloat;
            }
            catch
            {
                return dbfloat;
            }
        }
        public static DateTime ConvertDBDateTime(object dbDateTimeObj)
        {
            DateTime dbdatetime = DateTime.MinValue;
            try
            {
                dbdatetime = (DateTime)dbDateTimeObj;
                return dbdatetime;
            }
            catch
            {
                return dbdatetime;
            }

        }
        public static Guid ConvertDBGuid(object dbDateTimeObj)
        {
            Guid dbGuid = new Guid();
            try
            {
                dbGuid = (Guid)dbDateTimeObj;
                return dbGuid;
            }
            catch
            {
                return dbGuid;
            }

        }

    }
}