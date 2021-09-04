using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MadniRaza_BLL;

public partial class frm_ProjectImage : System.Web.UI.Page
{

    #region Global Variables
    tbl_ProjectImages_BLL objPI;

    #endregion Global Variables


    #region All Events
    public frm_ProjectImage()
    {
        objPI = new tbl_ProjectImages_BLL();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["project_id"] != null)
        {
            hf_ProjectID.Value = Request.QueryString["project_id"];
        }
    }
    protected void btn_Back_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("frm_ProjectImages.aspx?project_id=" + hf_ProjectID.Value);
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
            _rtVal = objPI.AddProjectImageBLL(Convert.ToInt64(hf_ProjectID.Value), txt_CatName.Text);
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

            txt_CatName.Text = "";
        }
        catch (Exception ex)
        {
            ShowAlert(ex.Message, CommonMethods.AlertTypes.Error);
        }

    }
    void HideAlerts() { alert.Visible = false; }
 
    #endregion All Methods



}