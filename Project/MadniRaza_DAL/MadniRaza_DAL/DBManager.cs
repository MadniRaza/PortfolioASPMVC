using System;
using System.Data;
using System.Data.SqlClient;

namespace MadniRaza_DAL
{
 public   class DBManager
    {
        SqlConnection _SqlConn;

        
        public DBManager()
        {
            string _DB_CS = "Server=.; Database=MadniRazaDB; UID=sa; PWD=9254033;";
            _SqlConn = new SqlConnection(_DB_CS);
        }
        
        public SqlConnection getDBConnection()
        {
            return this._SqlConn;
        }
    }
}
