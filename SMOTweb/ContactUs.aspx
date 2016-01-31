<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="SMOTweb.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#navContactUs').addClass('current-menu-item');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-title opacity">
                        <h3>
                            <asp:Label ID="lblPageTitle" runat="server" Text=""></asp:Label>
                        </h3>
                        <h4>some information about us</h4>
                    </div>
                </div>
                <!--/ .col-xs-12-->
            </div>
            <!--/ .row-->
            <div class="row">
                <div class="col-md-6">
                    <div class="contact-widget opacity">
                        <p class="contact-info">
                            <asp:Literal ID="litContactUs" runat="server"></asp:Literal>						
                        </p>
                        <h4>Contact details
							</h4>
                        <div class="textwidget contact-info">
                            <p><i class="icon-location-2"></i>
                                <asp:Label ID="lblContactLocation" runat="server" Text=""></asp:Label></p>
                            <p><i class="icon-phone-2"></i>
                                <asp:Label ID="lblContactPhone" runat="server" Text=""></asp:Label></p>
                            <p><i class=" icon-mail-5"></i><a id="aContactEmail" runat="server" href="#"></a></p>
                        </div>
                    </div>
                    <!--/ .contact-widget-->
                </div>
                <!--/ .col-md-6-->
                <div class="col-md-6">
                    <div class="contact-respond opacity">
                        <div id="respond">
                            <div class="contact-form">

                                <p class="input-block">
                                    <asp:TextBox ID="txtContactName" placeholder="Name *" runat="server"></asp:TextBox>
                                </p>
                                <p class="input-block">
                                    <asp:TextBox ID="txtContactEmail" placeholder="Email *" runat="server"></asp:TextBox>
                                </p>
                                <p class="input-block">
                                    <asp:TextBox ID="txtContactWebsite" placeholder="Website *" runat="server"></asp:TextBox>
                                </p>
                                <p class="input-block">
                                    <asp:TextBox ID="txtMessage" TextMode="MultiLine" placeholder="Your Message *" runat="server"></asp:TextBox>
                                </p>
                                <p class="input-block">
                                    <asp:LinkButton ID="btnContactSubmit" class="button default input-block-last" runat="server">Submit</asp:LinkButton>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
