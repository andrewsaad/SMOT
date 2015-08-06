<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SMOTweb.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $('#navlogin').addClass('current-menu-item');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="container">
            <asp:Login ID="Login1" Width="100%" runat="server">
                <LayoutTemplate>
                    <div class="row">
                        <div class="col-md-12" style="padding-left: 0px !important">
                            <div class="col-md-2">
                                UserName :
                            </div>
                            <div class="col-md-3">
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            Password :
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-5">
                            <div style="float: right">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                <asp:LinkButton ID="LoginButton" CssClass="button default" CommandName="Login" runat="server" ValidationGroup="Login1">Login</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </LayoutTemplate>
            </asp:Login>
        </div>
    </section>
</asp:Content>
