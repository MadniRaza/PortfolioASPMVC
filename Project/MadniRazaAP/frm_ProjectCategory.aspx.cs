using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MadniRaza_BLL;

public partial class frm_ProjectCategory : System.Web.UI.Page
{

    #region Global Variables
    tbl_ProjectCategories_BLL objPC;

    #endregion Global Variables


    #region All Events
    public frm_ProjectCategory()
    {
        objPC = new tbl_ProjectCategories_BLL();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Back_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("frm_ProjectCategories.aspx");
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
            if (!objPC.isExist(txt_CatName.Text))
            {
                _rtVal= objPC.AddProjectCategoryBLL(txt_CatName.Text, "Admin");
                if (_rtVal == true)
                {
                    ShowAlert("Record Saved Successfully", CommonMethods.AlertTypes.Success);
                }
            }

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