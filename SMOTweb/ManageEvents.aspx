<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageEvents.aspx.cs" Inherits="SMOTweb.ManageEvents" %>

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
                        <asp:GridView ID="GridViewEvents" CssClass="table table-bordered" OnRowCommand="GridViewEvents_RowCommand" AllowPaging="true" OnPageIndexChanging="GridViewEvents_PageIndexChanging" EmptyDataText="No Events" AutoGenerateColumns="false" runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Name" DataField="EventName" />
                                <asp:BoundField HeaderText="Place" DataField="EventPlace" />
                                <asp:BoundField HeaderText="Date" DataField="EventDate" />
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEdit" CssClass="btn btn-primary" CommandName="EditEvent" CommandArgument='<%# Eval("EventID") %>' runat="server"><i class="icon-pencil" style="color:white"></i> Edit</asp:LinkButton>
                                        <asp:LinkButton ID="btnDelete" CssClass="btn btn-danger" CommandName="DeleteEvent" OnClientClick="return confirm('Are you sure you want to delete this Event ?')" CommandArgument='<%# Eval("EventID") %>' runat="server"><i class="icon-trash" style="color:white"></i> Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </asp:Panel>
                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            </div>
        </div>
    </section>
</asp:Content>
