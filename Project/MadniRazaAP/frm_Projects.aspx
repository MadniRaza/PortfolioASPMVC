<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="frm_Projects.aspx.cs" Inherits="frm_Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_Admin" runat="Server">
    <head>
        <script type="text/javascript">
        </script>
    </head>
    <div class="module">
        <div class="module-head">
            <h3>
                Projects</h3>
        </div>
        <div class="module-body">
            <asp:ScriptManager ID="scriptmanager1" runat="server" EnableScriptGlobalization="true"
                EnableScriptLocalization="true">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="up" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="module-option clearfix">
                        <div class="input-append pull-left">
                            <asp:TextBox class="span6" runat="server" placeholder="Enter Keywords" ID="txt_Search"></asp:TextBox>
                            <asp:DropDownList runat="server" ID="dd_Search" CssClass="span6">
                                <asp:ListItem>Name</asp:ListItem>
                                <asp:ListItem>Roll No</asp:ListItem>
                                <asp:ListItem>User Type</asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinkButton ID="lnkbtn_Search" runat="server" class="btn" Text='<i class="icon-search"></i>'
                                OnClick="lnkBtn_Search_Click"></asp:LinkButton>
                        </div>
                        <div class="pull-right">
                            <asp:Button ID="btn_CNR" runat="server" CssClass="btn btn-primary" Text="Create New Record"
                                OnClick="btn_CNR_Click" />
                        </div>
                    </div>
                    <br />
                    <div id="alert" runat="server">
                        <button type="button" class="close" data-dismiss="alert">
                            &times;</button>
                        <strong>
                            <asp:Label ID="lbl_Alert" runat="server"></asp:Label></strong>
                    </div>
                    <asp:GridView ID="gv_Projects" runat="server" CssClass="table table-striped table-bordered table-condensed"
                        AutoGenerateColumns="False" ShowFooter="True" EmptyDataText="No record(s) found."
                        DataKeyNames="project_id" AllowPaging="True" OnPageIndexChanging="gv_Users_PageIndexChanging">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <center>
                                        <asp:CheckBox ID="cb_Middle" runat="server" /></center>
                                </ItemTemplate>
                                <HeaderTemplate>
                                    <center>
                                        <asp:CheckBox ID="cb_Header" runat="server" OnCheckedChanged="cb_Header_CheckedChanged"
                                            AutoPostBack="true" /></center>
                                </HeaderTemplate>
                                <FooterTemplate>
                                    <center><asp:LinkButton ID="lnkBtn_DeleteAll" runat="server" OnClick="lnkBtn_DeleteAll_Click"
                                        CssClass="btn btn-small btn-danger item_purge" Text="<i class='btn-icon-only icon-remove-sign'></i>"
                                        ToolTip="Delete"></asp:LinkButton></center>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="project_id" HeaderText="ID" />
                            <asp:BoundField DataField="project_category_name" HeaderText="NAME" />
                            <asp:BoundField DataField="project_name" HeaderText="USER TYPE" />
                            <asp:BoundField DataField="project_client_name" HeaderText="USER TYPE" />
                            <asp:BoundField DataField="inserted_by" HeaderText="Inserted_by" />
                            <asp:TemplateField HeaderText="Actions" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <div class="dropdown">
                                        <a class="dropdown-toggle btn" data-toggle="dropdown" href="#"><i class="icon-wrench">
                                        </i></a>
                                        <ul class="dropdown-menu pull-right open" role="menu" aria-labelledby="dLabel">
                                            <li>
                                                <asp:LinkButton ID="lnkBtn_Edit" ToolTip="Edit" runat="server" OnClick="lnkBtn_Edit_Click"
                                                    Text='<i class="icon-edit"> Edit</i>'></asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkBtn_Delete" ToolTip="Delete" OnClick="lnkBtn_Delete_Click"
                                                    Text='<i class="icon-trash"> Delete</i>' OnClientClick="return ConfirmDelete();"
                                                    runat="server"></asp:LinkButton></li>
                                            <li>
                                                <asp:LinkButton ID="lnkBtn_PI" ToolTip="Edit" runat="server" OnClick="lnkBtn_PI_Click"
                                                    Text='<i class="icon-edit"> Images</i>'></asp:LinkButton></li>
                                        </ul>
                                    </div>
                                </ItemTemplate>
                                <ItemStyle Width="50px"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
</asp:Content>


