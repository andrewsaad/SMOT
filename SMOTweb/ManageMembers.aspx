<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageMembers.aspx.cs" Inherits="SMOTweb.ManageMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/css/bootstrap-custom.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="container">
            <div class="row">
                <asp:Panel ID="PanelGridView" runat="server">
                    <div style="color: #fff !important">
                        <asp:LinkButton ID="btnAddMember" Style="margin-bottom: 15px" OnClick="btnAddMember_Click" CssClass="btn btn-success" runat="server"><i class="icon-plus" style="color:white"></i> Add New Member</asp:LinkButton>
                        <asp:GridView ID="GridViewMembers" CssClass="table table-bordered" OnRowCommand="GridViewMembers_RowCommand" AllowPaging="true" OnPageIndexChanging="GridViewMembers_PageIndexChanging" EmptyDataText="No Members" AutoGenerateColumns="false" runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Name" DataField="MemberName" />
                                <asp:BoundField HeaderText="Telephone" DataField="MemberTelephone" />
                                <asp:BoundField HeaderText="Email" DataField="MemberEmail" />
                                <asp:TemplateField HeaderText="Photo">
                                    <ItemTemplate>
                                        <a href='<%# Eval("MemberImagePath") %>' class="btn btn-info"><i class="icon-picture" style="color: white"></i>View Photo</a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEdit" CssClass="btn btn-primary" CommandName="EditMember" CommandArgument='<%# Eval("MemberID") %>' runat="server"><i class="icon-pencil" style="color:white"></i> Edit</asp:LinkButton>
                                        <asp:LinkButton ID="btnDelete" CssClass="btn btn-danger" CommandName="DeleteMember" OnClientClick="return confirm('Are you sure you want to delete this member ?')" CommandArgument='<%# Eval("MemberID") %>' runat="server"><i class="icon-trash" style="color:white"></i> Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </asp:Panel>

                <asp:Panel ID="PanelEditMember" Visible="false" runat="server">
                    <asp:LinkButton ID="btnBack" CssClass="btn btn-danger" OnClick="btnBack_Click" runat="server" Style="margin-bottom: 25px"><i class="icon-backward" style="color:white;"></i> Back to members</asp:LinkButton>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Member Name :
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Member Telephone :
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Member Email :
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 15px">
                                <div class="col-md-4">
                                    Member Photo :
                                </div>
                                <div class="col-md-8">
                                    <asp:FileUpload ID="FileUploadMemberPhoto" runat="server" />
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-12">
                                    <asp:LinkButton ID="btnSave" OnClick="btnSave_Click" Style="float: right" CssClass="btn btn-success" runat="server"> Save <i class="icon-ok" style="color:white"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <div style="text-align:center">
                            <img id="imgMember" runat="server" src="~/images/noImg.png" style="max-height:200px;" />
                            <br />
                                <asp:LinkButton ID="btnDeletePhoto" OnClick="btnDeletePhoto_Click" Visible="false" runat="server"><i class="icon-trash" style="color:red"></i> <label style="color:red;font-size:small">Delete Photo</label></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </section>

</asp:Content>
