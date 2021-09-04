<%@ Page Title="" Language="C#" MasterPageFile="Admin.master" AutoEventWireup="true" CodeFile="frm_ProjectImages.aspx.cs" Inherits="frm_ProjectImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_Admin" runat="Server">
    <div class="module">
        <div class="module-head">
            <h3>
                Assignment & Marks > Assignment Details</h3>
        </div>
        <div class="module-body">
            <div class="module-option clearfix">
                <div class="input-append pull-left">
                    <asp:TextBox class="span4" runat="server" placeholder="Enter Keywords" ID="txt_Search"></asp:TextBox>
                        <asp:DropDownList runat="server" ID="dd_Search">
                            <asp:ListItem>Student Roll No.</asp:ListItem>
                        </asp:DropDownList>
                        <asp:LinkButton ID="lnkbtn_Search" runat="server" class="btn" Text='<i class="icon-search"></i>' OnClick="lnkBtn_Search_Click"></asp:LinkButton>
                </div>
                 <div class="pull-right">
                            <asp:Button ID="btn_CNR" runat="server" CssClass="btn btn-primary" Text="Create New Record"
                                OnClick="btn_CNR_Click" />
                        </div>
            </div>
            <br />
            <table class="table table-striped table-bordered table-condensed">
                <thead>
                    <tr>
                        <th>
                            Course Name
                        </th>
                        <th>
                            Year
                        </th>
                        <th>
                            Semester
                        </th>
                        <th>
                            Batch
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_Course" runat="server" Text="s"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbl_Year" runat="server" Text="s"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbl_Semester" runat="server" Text="s"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbl_Batch" runat="server" Text="s"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>


            <br />
            <asp:GridView ID="gv_PI" runat="server" CssClass="table table-striped table-bordered table-condensed"
                    AutoGenerateColumns="False" ShowFooter="True" EmptyDataText="No record(s) found."
                    DataKeyNames="project_image_id" AllowPaging="True" 
                onpageindexchanging="gv_Users_PageIndexChanging">
                    <Columns>
                    
                        <asp:BoundField DataField="project_image_id" HeaderText="ID" />
                        <asp:BoundField DataField="project_name" HeaderText="Student Name" />
                        <asp:BoundField DataField="project_image_name" HeaderText="student RollNo" />
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
                                        
                                    </ul>
                                </div>
                            </ItemTemplate>
                            <ItemStyle Width="50px"></ItemStyle>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
        </div>
    </div>
    <asp:HiddenField ID="hf_ProjectID" runat="server" />
</asp:Content>
