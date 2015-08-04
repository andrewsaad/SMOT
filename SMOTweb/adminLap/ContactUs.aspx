<%@ Page Title="" Language="C#" MasterPageFile="~/adminLap/Admin.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="SMOTweb.adminLap.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget">
                <div class="widget-title">
                    <h4><i class="icon-envelope-alt"></i>Contact Us Page</h4>
                    <span class="tools">
                        <a href="javascript:;" class="icon-chevron-down"></a>
                        <a class="icon-remove" href="javascript:;"></a>
                    </span>
                </div>
                <div class="widget-body">
                    <div class="row-fluid">
                        <div class="span10">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label CssClass="label-mini" ID="lblContactInfo" runat="server" Text="Contact Information"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                       <%-- <asp:RequiredFieldValidator ValidationGroup="ContactValGroup" runat="server" ID="RequiredAddress" ForeColor="Red" Font-Bold="true" Font-Size="Large" ErrorMessage="*"
                                            Display="Dynamic" ControlToValidate="txtLocation"></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblTelephone" runat="server" Text="Telephones"></asp:Label>
                                    </td>
                                    <td style="margin-left: 40px">
                                        <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                       <%-- <asp:RequiredFieldValidator ValidationGroup="ContactValGroup" runat="server" ID="RequiredTelephone" ForeColor="Red" Font-Bold="true" Font-Size="Large" ErrorMessage="*"
                                            Display="Dynamic" ControlToValidate="txtTelephone"></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblEMail" runat="server" Text="E-Mail"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                       <%-- <asp:RequiredFieldValidator ValidationGroup="ContactValGroup" runat="server" ID="RequiredMail" ForeColor="Red" Font-Bold="true" Font-Size="Large" ErrorMessage="*"
                                            Display="Dynamic" ControlToValidate="txtEMail"></asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                
                               
                                <tr>
                                    <td>
                                        <asp:Label ID="lblFacebook" runat="server" Text="Facebook"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtFacebook" runat="server"></asp:TextBox>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btnSave" runat="server" Text="Save" Width="100" ValidationGroup="ContactValGroup" CssClass="btn btn-success" OnClick="btnSave_Click" />
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="100" CssClass="btn btn-danger" OnClick="btnCancel_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
