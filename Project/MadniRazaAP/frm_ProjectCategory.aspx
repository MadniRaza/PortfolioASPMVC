<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="frm_ProjectCategory.aspx.cs" Inherits="frm_ProjectCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_Admin" runat="Server">
<%--<div class="module">--%>
        <div class="module-head">
            <h3>
                Categories > Create Category</h3>
        </div>
        <div class="module-body">
            <%--<form class="form-horizontal row-fluid">--%>
            <asp:ScriptManager ID="scriptmanager1" runat="server" EnableScriptGlobalization="true"
                EnableScriptLocalization="true">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="up" runat="server">
                <ContentTemplate>
                    <div class="module-option clearfix">
                        <div class="pull-right">
                            <asp:Button ID="btn_Back" runat="server" CssClass="btn btn-primary" Text="Back" OnClick="btn_Back_Click" />
                        </div>
                    </div>
                    <div id="alert" runat="server">
                        <button type="button" class="close" data-dismiss="alert">
                            &times;</button>
                        <strong>
                            <asp:Label ID="lbl_Alert" runat="server"></asp:Label></strong>
                    </div>
                    <br />
                    <div class="control-group">
                        <label class="control-label" for="basicinput">
                            Name</label>
                        <div class="controls">
                            <asp:TextBox ID="txt_CatName" runat="server" CssClass="span6" MaxLength="19"></asp:TextBox>
                        </div>
                    </div>
                    
                    <div class="control-group">
                        <div class="controls">
                            <asp:Button ID="btn_Save" runat="server" CssClass="btn btn-large btn-success" Text="Save"
                                OnClick="btn_Save_Click" />
                        </div>
                    </div>
                    <%--                    </form>--%>
                    </div> </div>
                </ContentTemplate>
            </asp:UpdatePanel>
</asp:Content>
