using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using MadniRaza_BLL;

public partial class frm_Project : System.Web.UI.Page
{

    #region Global Variables
    tbl_ProjectCategories_BLL objPC;
    tbl_Projects_BLL objProjets;
    #endregion Global Variables


    #region All Events
    public frm_Project()
    {
        objPC = new tbl_ProjectCategories_BLL();
        objProjets = new tbl_Projects_BLL();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        FillCategories();
    }
    protected void btn_Back_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("frm_Categories.aspx");
        }
        catch (Exception)
        {

            throw;
        }
    }
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        try
        {

            bool _rtVal = false;
            //if (!objPC.isExist(txt_CatName.Text))
            //{
            if (fu_ProImg.HasFile)
            {
                string _ext = Path.GetExtension(fu_ProImg.PostedFile.FileName);
                if (_ext.Equals(".jpg") || _ext.Equals(".png"))
                {
                    if (fu_ProImg.PostedFile.ContentLength < 10240)
                    {
                        String _file_name = Guid.NewGuid().ToString() + Ext;
                        fu_ProImg.SaveAs(Server.MapPath("Uploads//" + FName));
                        xConn.Open();
                        new SqlCommand("insert into tblDoctor values('" + txtFName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','" + txtAddress.Text + "','" + cmbSpecialist.SelectedItem.ToString() + "','" + cmbTiming.SelectedItem.ToString() + "','" + txtFees.Text + "','" + FName + "')", xConn).ExecuteNonQuery();
                        Response.Write("saved");
                        xConn.Close();
                        xImage.ImageURL = "Uploads/" + FName;
                    }
                    else
                    {
                        Response.Write("File size too large");
                    }
                }
                else
                {
                    Response.Write("Error");
                }

            }

        }
            }

    _rtVal = objProjets.AddProjectBLL(Convert.ToInt64(ddl_PC.SelectedValue), txt_ProName.Text, txt_ProTitle.Text, txt_ProClientName.Text, txt_ProDesc.Text, txt_ProIndusType.Text, txt_ProWebURL.Text, "", "Raza");
            if (_rtVal == true)
            {
                ShowAlert("Record Saved Successfully", CommonMethods.AlertTypes.Success);
            }
            //}

        }
        catch (Exception)
        {

            throw;
        }
    }
    #endregion All Events

    #region All Methods
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

    private void Clear()
    {
        try
        {

            txt_ProClientName.Text = "";
        }
        catch (Exception ex)
        {
            ShowAlert(ex.Message, CommonMethods.AlertTypes.Error);
        }

    }
    void HideAlerts() { alert.Visible = false; }

    void FillCategories()
    {
        ddl_PC.DataSource = objPC.GetProjectCategoriesDAL(true);
        ddl_PC.DataValueField = "project_category_id";
        ddl_PC.DataTextField = "project_category_name";
        ddl_PC.DataBind();

    }

    #endregion All Methods



}