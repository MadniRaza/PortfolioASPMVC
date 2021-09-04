using System;
using MadniRaza_DAL;
using System.Data;

namespace MadniRaza_BLL
{
    public class tbl_Projects_BLL
    {
        public bool AddProjectBLL(long project_category_id, string project_name, string project_title, string project_client_name,
            string project_desription, string project_industry_type, string project_web_url, string project_master_img, string inserted_by)
        {
            bool _rtVal = false;
            tbl_Projects_DAL objProjects = new tbl_Projects_DAL();
            _rtVal = objProjects.AddProjectDAL(project_category_id, project_name, project_title, project_client_name, project_desription, project_industry_type, project_web_url, project_master_img, inserted_by);
            return _rtVal;
        }
       
        public DataTable GetProjectsBLLL(bool project_status)
        {
            DataTable _rtVal;
            tbl_Projects_DAL objProjects = new tbl_Projects_DAL();
            _rtVal = objProjects.GetProjectsDAL(project_status);
            return _rtVal;
        }
    
       
    }
}
