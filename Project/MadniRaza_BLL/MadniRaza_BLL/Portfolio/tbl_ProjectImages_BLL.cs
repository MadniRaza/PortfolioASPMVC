using System;
using MadniRaza_DAL;
using System.Data;

namespace MadniRaza_BLL
{
    public class tbl_ProjectImages_BLL
    {
        public bool AddProjectImageBLL(long project_id, string project_image_name)
        {
            bool _rtVal = false;
            tbl_ProjectImages_DAL objPI = new tbl_ProjectImages_DAL();
            _rtVal = objPI.AddProjectImageDAL(project_id, project_image_name);
            return _rtVal;
        }
       
        public DataTable GetProjectImagesBLLL(long project_id)
        {
            DataTable _rtVal;
            tbl_ProjectImages_DAL objPI = new tbl_ProjectImages_DAL();
            _rtVal = objPI.GetProjectImagesDAL(project_id);
            return _rtVal;
        }
    
       
    }
}
