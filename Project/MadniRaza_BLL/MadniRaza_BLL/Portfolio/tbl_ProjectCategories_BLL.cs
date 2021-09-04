using System;
using MadniRaza_DAL;
using System.Data;

namespace MadniRaza_BLL
{
    public class tbl_ProjectCategories_BLL
    {
        public bool AddProjectCategoryBLL(string project_category_name, string inserted_by)
        {
            bool _rtVal = false;
            tbl_ProjectCategories_DAL objPC = new tbl_ProjectCategories_DAL();
            _rtVal = objPC.AddProjectCategoryDAL(project_category_name, inserted_by);
            return _rtVal;
        }
        public bool EditProjectCategoryBLL(long project_category_id, string project_category_name, string inserted_by)
        {
            bool _rtVal = false;
            tbl_ProjectCategories_DAL objPC = new tbl_ProjectCategories_DAL();
            _rtVal = objPC.EditProjectCategoryDAL(project_category_id, project_category_name, inserted_by);
            return _rtVal;
        }
        public bool updateProjectCategoryStatusDAL(long project_category_id, bool project_category_status, string updated_by)
        {
            bool _rtVal = false;
            tbl_ProjectCategories_DAL objPC = new tbl_ProjectCategories_DAL();
            _rtVal = objPC.updateProjectCategoryStatusDAL(project_category_id, project_category_status, updated_by);
            return _rtVal;
        }
        public DataTable GetProjectCategoriesDAL(bool project_category_status)
        {
            DataTable _rtVal;
            tbl_ProjectCategories_DAL objPC = new tbl_ProjectCategories_DAL();
            _rtVal = objPC.GetProjectCategoriesDAL(project_category_status);
            return _rtVal;
        }
        public bool isExist(string project_category_name)
        {
            bool _rtVal = false;
            tbl_ProjectCategories_DAL objPC = new tbl_ProjectCategories_DAL();
            _rtVal = objPC.isExist(project_category_name);
            return _rtVal;
        }
        public bool isExist(long project_cateogory_id, string project_category_name)
        {
            bool _rtVal = false;
            tbl_ProjectCategories_DAL objPC = new tbl_ProjectCategories_DAL();
            _rtVal = objPC.isExist(project_cateogory_id, project_category_name);
            return _rtVal;
        }




    }
}
