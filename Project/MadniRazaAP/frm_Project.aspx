<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="frm_Project.aspx.cs" Inherits="frm_Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_Admin" runat="Server">
<%--<div class="module">--%>
        <div class="module-head">
            <h3>
                Projects > Create Project</h3>
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
                            Category</label>
                        <div class="controls">
                            <asp:DropDownList ID="ddl_PC" runat="server" AutoPostBack="true" CssClass="span6" 
                            >
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="basicinput">
                           Project Name</label>
                        <div class="controls">
                            <asp:TextBox ID="txt_ProName" runat="server" CssClass="span6" MaxLength="19"></asp:TextBox>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="basicinput">
                           Title</label>
                        <div class="controls">
                            <asp:TextBox ID="txt_ProTitle" runat="server" CssClass="span6" MaxLength="19"></asp:TextBox>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="basicinput">
                           Client Name</label>
                        <div class="controls">
                            <asp:TextBox ID="txt_ProClientName" runat="server" CssClass="span6" MaxLength="19"></asp:TextBox>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="basicinput">
                           Description</label>
                        <div class="controls">
                            <asp:TextBox ID="txt_ProDesc" runat="server" CssClass="span6" MaxLength="19" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="basicinput">
                           Industry Type</label>
                        <div class="controls">
                            <asp:TextBox ID="txt_ProIndusType" runat="server" CssClass="span6" MaxLength="19"></asp:TextBox>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="basicinput">
                           Web URL</label>
                        <div class="controls">
                            <asp:TextBox ID="txt_ProWebURL" runat="server" CssClass="span6" MaxLength="19"></asp:TextBox>
                        </div>
                    </div>
                    <div class="control-group">
                <label class="control-label" for="basicinput">
                    Image</label>
                <div class="controls">
                    <asp:FileUpload runat="server" ID="fu_ProImg" />
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
