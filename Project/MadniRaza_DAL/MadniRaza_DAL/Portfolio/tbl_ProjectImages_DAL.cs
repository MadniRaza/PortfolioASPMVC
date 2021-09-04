using System;
using System.Data;
using System.Data.SqlClient;


namespace MadniRaza_DAL
{
    public class tbl_ProjectImages_DAL
    {
        public bool AddProjectImageDAL(long project_id, string project_image_name)
        {
            bool _rtVal = false;
            SqlCommand objCommand = new SqlCommand();
            SqlConnection objConn = new SqlConnection();
            try
            {
                DBManager objDBManager = new DBManager();
                objConn = objDBManager.getDBConnection();
                DateTime _inserted_on = DateTime.Now;



                string _query = "insert into tbl_ProjectImages(project_id,project_image_name) ";
                _query += "Values ";
                _query += "('" + project_id + "','" + project_image_name + "')";

                objConn.Open();
                objCommand.Connection = objDBManager.getDBConnection();
                objCommand.CommandText = _query;
                objCommand.ExecuteNonQuery();
                _rtVal = true;
            }
            catch (Exception)
            {
                _rtVal = false;
                throw;

            }
            finally
            {
                objConn.Close();
                objConn.Dispose();
                objCommand.Dispose();
                objCommand = null;
            }
            return _rtVal;
        }

        public DataTable GetProjectImagesDAL(long project_id)
        {
            DataTable _Dt = new DataTable();
            try
            {
                DBManager objDBManager = new DBManager();

                string _query = "select p.project_id, p.project_name,pi.project_image_id,pi.project_image_name from tbl_Projects p ";
                _query += "    inner join tbl_projectImages pi on p.project_id = Pi.project_id ";
                _query += "where p.project_id ='" + project_id + "' ";

                SqlDataAdapter _objDataAdapter = new SqlDataAdapter(_query, objDBManager.getDBConnection());
                _objDataAdapter.Fill(_Dt);
            }
            catch (Exception)
            {
                throw;
            }
            return _Dt;

        }


    }
}
