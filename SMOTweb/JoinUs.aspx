<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Career.aspx.cs" Inherits="SMOTweb.Career" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#navCareer').addClass('current-menu-item');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="content-padding-off">
        <section class="section">

            <div class="container">
                <div class="col-xs-12">

                    <div class="section-title opacity">
                        <h3>Apply To Join Us</h3>
                        <h4></h4>
                    </div>

                </div>
                <!--/ .col-xs-12-->

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">

                        <div class="contact-respond opacity">

                            <div id="respond">

                                <div class="contact-form" >

                                    <p class="input-block">
                                        <asp:TextBox ID="txtName" placeholder="Name *" runat="server"></asp:TextBox>
<%--                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Bold="false" ForeColor="Red" ValidationGroup="UploadCV" ControlToValidate="txtName"></asp:RequiredFieldValidator>--%>
                                    </p>
                                    <p class="input-block">
                                        <asp:TextBox ID="txtEmail" placeholder="Email *" runat="server"></asp:TextBox>
<%--                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Bold="false" ForeColor="Red" ValidationGroup="UploadCV" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>--%>

                                    </p>
                                    <p class="input-block" style="display: inline-block; padding: 10px; width: 100%; outline: none; border-width: 1px; border-style: solid; border-color: transparent; background-color: #202223; color: #999; font-size: 12px; font-style: italic; font-family: 'Roboto', sans-serif; -webkit-border-radius: 0; border-radius: 0; -webkit-box-shadow: none; box-shadow: none; -webkit-appearance: none;">
                                        Upload CV *
                                        <asp:FileUpload ID="FileUploadCV" runat="server" />
<%--                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Font-Bold="false" ForeColor="Red" ValidationGroup="UploadCV" ControlToValidate="FileUploadCV"></asp:RequiredFieldValidator>--%>

                                    </p>
                                    <p class="input-block">
                                        <asp:TextBox ID="txtMessage" placeholder="Your message" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </p>
                                    <p class="input-block">
                                        <asp:LinkButton ID="lnkBtnSubmit"  ValidationGroup="UploadCV" class="button default input-block-last" runat="server">Submit</asp:LinkButton>
                                    </p>
                                </div>
                                <!--/ .comments-form-->

                            </div>
                            <!--/ .respond-->

                        </div>
                        <!--/ .contact-respond-->

                    </div>
                    <div class="col-md-3"></div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
