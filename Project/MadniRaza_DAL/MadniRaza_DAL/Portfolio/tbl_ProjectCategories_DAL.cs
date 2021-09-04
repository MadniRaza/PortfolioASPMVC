using System;
using System.Data;
using System.Data.SqlClient;


namespace MadniRaza_DAL
{
    public class tbl_ProjectCategories_DAL
    {
        public bool AddProjectCategoryDAL(string project_category_name, string inserted_by)
        {
            bool _rtVal = false;
            SqlCommand objCommand = new SqlCommand();
            SqlConnection objConn = new SqlConnection();
            try
            {
                DBManager objDBManager = new DBManager();
                objConn = objDBManager.getDBConnection();
                DateTime _inserted_on = DateTime.Now;



                string _query = "insert into tbl_ProjectCategories(project_category_name,project_category_status,inserted_on,inserted_by) ";
                _query += "Values ";
                _query += "('" + project_category_name + "','" + true + "','" + _inserted_on + "','" + inserted_by + "')";

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

        public bool EditProjectCategoryDAL(long project_category_id, string project_category_name, string updated_by)
        {
            bool _rtVal = false;
            SqlCommand objCommand = new SqlCommand();
            SqlConnection objConn = new SqlConnection();
            try
            {
                DBManager objDBManager = new DBManager();
                DateTime _updated_on = DateTime.Now;

                string _query = "update tbl_ProjectCategories ";
                _query += "set project_category_name ='" + project_category_name + "',updated_by='" + updated_by + "' ";
                _query += "where project_category_id='" + project_category_id + "' ";

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
        public bool updateProjectCategoryStatusDAL(long project_category_id,bool project_category_status,string updated_by)
        {
            bool _rtVal = false;
            SqlCommand objCommand = new SqlCommand();
            SqlConnection objConn = new SqlConnection();
            try
            {
                DBManager objDBManager = new DBManager();
                DateTime _updated_on = DateTime.Now;

                string _query ="update tbl_ProjectCategories ";
                _query += "set project_category_status ='"+project_category_status+"',updated_by='"+updated_by+"' ";
                _query += "where project_category_id='" + project_category_id+"' ";

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
        public DataTable GetProjectCategoriesDAL(bool project_category_status)
        {
            DataTable _Dt = new DataTable();
            try
            {
                DBManager objDBManager = new DBManager();

                string _query = "select project_category_id,project_category_name,project_category_status,inserted_by from tbl_ProjectCategories ";
                _query += "where project_category_status ='"+project_category_status+"' ";

                SqlDataAdapter _objDataAdapter = new SqlDataAdapter(_query, objDBManager.getDBConnection());
                _objDataAdapter.Fill(_Dt);
            }
            catch (Exception)
            {
                throw;
            }
            return _Dt;

        }

        public bool isExist(string project_category_name)
        {
            
            bool _rtVal = false;
            try
            {
                DBManager objDBManager = new DBManager();
                DataTable _Dt = new DataTable();

                string _query = "select project_category_id from tbl_ProjectCategory ";
                _query += "where project_category_name ='" + project_category_name + "' ";

                SqlDataAdapter _objDataAdapter = new SqlDataAdapter(_query, objDBManager.getDBConnection());
                _objDataAdapter.Fill(_Dt);
                if (_Dt.Rows.Count > 0)
                {
                    _rtVal = true;
                }

            }
            catch (Exception)
            {
                throw;
            }
            return _rtVal;

        }
        public bool isExist(long project_cateogory_id, string project_category_name)
        {

            bool _rtVal = false;
            try
            {
                DBManager objDBManager = new DBManager();
                DataTable _Dt = new DataTable();

                string _query = "select project_category_id from tbl_ProjectCategories ";
                _query += "where project_category_name ='" + project_category_name + "' and project_cateogory_id='"+project_cateogory_id+"' ";

                SqlDataAdapter _objDataAdapter = new SqlDataAdapter(_query, objDBManager.getDBConnection());
                _objDataAdapter.Fill(_Dt);
                if (_Dt.Rows.Count > 0)
                {
                    _rtVal = true;
                }

            }
            catch (Exception)
            {
                throw;
            }
            return _rtVal;

        }

    }
}
