using System;
using System.Data;
using System.Data.SqlClient;


namespace MadniRaza_DAL
{
    public class tbl_Projects_DAL
    {
        public bool AddProjectDAL(long project_category_id, string project_name, string project_title, string project_client_name,
            string project_desription, string project_industry_type, string project_web_url, string project_master_img, string inserted_by)
        {
            bool _rtVal = false;
            SqlCommand objCommand = new SqlCommand();
            SqlConnection objConn = new SqlConnection();
            try
            {
                DBManager objDBManager = new DBManager();
                objConn = objDBManager.getDBConnection();
                DateTime _inserted_on = DateTime.Now;



                string _query = "insert into tbl_Projects(project_category_id,project_name,project_title,";
                _query += "project_client_name,project_description,project_industry_type,project_web_url,project_master_img,project_status,inserted_on,inserted_by) ";
                _query += "Values ";
                _query += "('" + project_category_id + "','" + project_name + "','" + project_title + "','" + project_client_name + "',";
                _query += "'" + project_desription + "','" + project_industry_type + "','" + project_web_url + "','" + project_master_img + "',";
                _query += "'" + true + "', '" + _inserted_on + "','" + inserted_by + "')";

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

        public DataTable GetProjectsDAL(bool project_status)
        {
            DataTable _Dt = new DataTable();
            try
            {
                DBManager objDBManager = new DBManager();

                string _query = "select p.project_id,pc.project_category_name, p.project_name,p.project_client_name,p.project_title,p.inserted_by from tbl_Projects p ";
                _query += " inner join tbl_ProjectCategories pc on pc.project_category_id = p.project_category_id ";
                _query += "where p.project_status ='" + project_status + "' ";

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
