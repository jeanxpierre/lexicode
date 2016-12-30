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
        public static List<OverwatchCharacter> loadCharacters()
        {
            List<OverwatchCharacter> oc = new List<OverwatchCharacter>();
                 
            using (SqlConnection conn = new SqlConnection(ds.latusdb))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    try
                    {
                        conn.Open();
                        cmd.CommandText = qry.overwatchcharacterdata;
                        cmd.CommandType = CommandType.Text;

                        SqlDataReader dr = cmd.ExecuteReader();

                        while (dr.Read())
                        {
                            oc.Add(new OverwatchCharacter(dr["CharacterId"].ToString(), dr["CharacterName"].ToString(), dr["CharacterType"].ToString(), dr["CharacterColor"].ToString()));
                        }
                    }
                    catch(Exception Ex)
                    {
                        // Do something :-)
                    }
                    return oc;
                }
            }
        }
    }
}