using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MadniRaza_BLL;

public partial class frm_ProjectImages : System.Web.UI.Page
{
    tbl_ProjectCategories_BLL objPC;
    tbl_ProjectImages_BLL objPI;


    public frm_ProjectImages()
    {
        objPC = new tbl_ProjectCategories_BLL();
        objPI = new tbl_ProjectImages_BLL();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["project_id"] != null)
        {
            hf_ProjectID.Value = Request.QueryString["project_id"];
            Fill_Grid();
        }
        
    }
    protected void cb_Header_CheckedChanged(object sender, EventArgs e)
    {
        try
        {

            CheckBox cb_Header = (CheckBox)gv_PI.HeaderRow.FindControl("cb_Header");
            foreach (GridViewRow xRow in gv_PI.Rows)
            {
                CheckBox cb_Middle = (CheckBox)xRow.FindControl("cb_Middle");
                if (cb_Header.Checked && cb_Header != null)
                {
                    cb_Middle.Checked = true;
                }
                else
                {
                    cb_Middle.Checked = false;
                }
            }

        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void lnkBtn_Edit_Click(object sender, EventArgs e)
    {
        try
        {
            GridViewRow clickedRow = ((LinkButton)sender).NamingContainer as GridViewRow;
            int ID = Convert.ToInt32(gv_PI.DataKeys[clickedRow.RowIndex].Value);
            Response.Redirect("frm_ManageUsersEdit_Admin.aspx?User_id=" + ID);
        }

        catch (Exception ex)
        {

        }
    }
    protected void lnkBtn_Search_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    using (READBEntities cntx = new READBEntities())
        //    {
        //        var obj_Search = new object();
        //        DataTable Dt = GlobalClass.CreateDataTable("user_id,name,user_type,user_name,user_password");
        //        if (dd_Search.SelectedItem.Text == "Name")
        //        {
        //            obj_Search = (from q in cntx.tblUsers where q.name.Contains(txt_Search.Text) select q).ToList();
        //        }
        //        if (dd_Search.SelectedItem.Text == "Roll No")
        //        {
        //            obj_Search = (from q in cntx.tblUsers where q.student_roll_no.Contains(txt_Search.Text) select q).ToList();
        //        }
        //        if (dd_Search.SelectedItem.Text == "User Type")
        //        {
        //            obj_Search = (from q in cntx.tblUsers where q.user_type.Contains(txt_Search.Text) select q).ToList();
        //        }



        //        List<tblUsers> obj_List = obj_Search as List<tblUsers>;

        //        for (int i = 0; i <= obj_List.Count - 1; i++)
        //        {
        //            DataRow xRow;
        //            xRow = Dt.NewRow();
        //            xRow[0] = obj_List[i].user_id;
        //            xRow[1] = obj_List[i].name;
        //            xRow[2] = obj_List[i].user_type;
        //            xRow[3] = obj_List[i].user_name;
        //            xRow[4] = obj_List[i].user_password;
        //            Dt.Rows.Add(xRow);
        //        }
        //        gv_Users.DataSource = Dt;
        //        gv_Users.DataBind();

        //    }


        //}

        //catch (Exception ex)
        //{

        //}
    }
    protected void lnkBtn_Delete_Click(object sender, EventArgs e)
    {
        
    }
    protected void lnkBtn_DeleteAll_Click(object sender, EventArgs e)
    {

        //using (READBEntities cntx = new READBEntities())
        //{
        //    foreach (GridViewRow xRow in gv_Users.Rows)
        //    {

        //        CheckBox cb = (CheckBox)xRow.FindControl("cb_Middle");
        //        if (cb.Checked && cb != null)
        //        {
        //            int ID = Convert.ToInt32(gv_Users.DataKeys[xRow.RowIndex].Value);
        //            var obj = (from q in cntx.tblUsers where q.user_id == ID select q).FirstOrDefault();
        //            cntx.DeleteObject(obj);
        //            cntx.SaveChanges();

        //        }
        //    }

        //    Fill_Grid();
        //    ShowMessage("Record(s) Deleted Successfully", GlobalClass.AlertTypes.SuccessType);
        //}

    }
    private void Fill_Grid()
    {
        try
        {
            DataTable _DT = CommonMethods.CreateDataTable("project_image_id,project_name,project_image_name");
            DataRow _DR;
            DataTable _Dt_PI = objPI.GetProjectImagesBLLL(Convert.ToInt64(hf_ProjectID.Value));
            for (int i = 0; i < _Dt_PI.Rows.Count; i++)
            {
                _DR = _DT.NewRow();
                _DR[0] = _Dt_PI.Rows[i]["project_image_id"].ToString();
                _DR[1] = _Dt_PI.Rows[i]["project_name"].ToString();
                _DR[2] = _Dt_PI.Rows[i]["project_image_name"].ToString();
                _DT.Rows.Add(_DR);
            }
            gv_PI.DataSource = _DT;
            gv_PI.DataBind();

        }
        catch (Exception)
        {

            throw;
        }

    }

    protected void btn_CNR_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("frm_CreateProjectImage.aspx?project_id=" + hf_ProjectID.Value + " ");
        }
        catch (Exception)
        {

            throw;
        }
    }
   

    protected void gv_Users_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {


            gv_PI.PageIndex = e.NewPageIndex;
            Fill_Grid();
        }
        catch (Exception)
        {

            throw;
        }
    }
}