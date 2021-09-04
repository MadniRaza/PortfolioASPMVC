using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MadniRaza_BLL;

public partial class frm_Projects : System.Web.UI.Page
{
    tbl_ProjectCategories_BLL objPC;
    tbl_Projects_BLL objProjects;


    public frm_Projects()
    {
        objPC = new tbl_ProjectCategories_BLL();
        objProjects = new tbl_Projects_BLL();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Fill_Grid();
    }
    protected void cb_Header_CheckedChanged(object sender, EventArgs e)
    {
        try
        {

            CheckBox cb_Header = (CheckBox)gv_Projects.HeaderRow.FindControl("cb_Header");
            foreach (GridViewRow xRow in gv_Projects.Rows)
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
            int ID = Convert.ToInt32(gv_Projects.DataKeys[clickedRow.RowIndex].Value);
            Response.Redirect("frm_ManageUsersEdit_Admin.aspx?User_id=" + ID);
        }

        catch (Exception ex)
        {

        }
    }
    protected void lnkBtn_PI_Click(object sender, EventArgs e)
    {
        try
        {
            GridViewRow clickedRow = ((LinkButton)sender).NamingContainer as GridViewRow;
            int ID = Convert.ToInt32(gv_Projects.DataKeys[clickedRow.RowIndex].Value);
            Response.Redirect("frm_ProjectImages.aspx?project_id=" + ID);
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
            DataTable _DT = CommonMethods.CreateDataTable("project_id,project_category_name,project_name,project_client_name,inserted_by");
            DataRow _DR;
            DataTable _Dt_Projects = objProjects.GetProjectsBLLL(true);
            for (int i = 0; i < _Dt_Projects.Rows.Count; i++)
            {
                _DR = _DT.NewRow();
                _DR[0] = _Dt_Projects.Rows[i]["project_id"].ToString();
                _DR[1] = _Dt_Projects.Rows[i]["project_category_name"].ToString();
                _DR[2] = _Dt_Projects.Rows[i]["project_name"].ToString();
                _DR[2] = _Dt_Projects.Rows[i]["project_client_name"].ToString();
                _DR[3] = _Dt_Projects.Rows[i]["inserted_by"].ToString();
                _DT.Rows.Add(_DR);
            }
            gv_Projects.DataSource = _DT;
            gv_Projects.DataBind();

        }
        catch (Exception)
        {

            throw;
        }

    }
    public void ShowAlert(string msg, string alert_type)
    {
        alert.Visible = true;
        lbl_Alert.Text = msg;
        if (alert_type == CommonMethods.AlertTypes.SuccessType)
        {
            alert.Attributes.Add("class", CommonMethods.AlertTypes.Success);
        }
        else if (alert_type == CommonMethods.AlertTypes.ErrorType)
        {
            alert.Attributes.Add("class", CommonMethods.AlertTypes.Error);
        }
        else if (alert_type == CommonMethods.AlertTypes.WarningType)
        {
            alert.Attributes.Add("class", CommonMethods.AlertTypes.Warning);
        }
        else if (alert_type == CommonMethods.AlertTypes.InfoType)
        {
            alert.Attributes.Add("class", CommonMethods.AlertTypes.Info);
        }
    }
    protected void btn_CNR_Click(object sender, EventArgs e)
    {
        try
        {


            Response.Redirect("frm_CreateProjects.aspx");
        }
        catch (Exception)
        {

            throw;
        }
    }
    void HideAlerts()
    { alert.Visible = false; }

    protected void gv_Users_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {


            gv_Projects.PageIndex = e.NewPageIndex;
            Fill_Grid();
        }
        catch (Exception)
        {

            throw;
        }
    }
}