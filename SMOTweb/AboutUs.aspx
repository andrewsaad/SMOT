<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="SMOTweb.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#navAboutUs').addClass('current-menu-item');
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
                    </div>

                </div>

            </div>
            <!--/ .row-->

            <div class="row">
                <asp:Literal ID="litAboutUs" runat="server"></asp:Literal>
            </div>
            <!--/ .row-->

        </div>
        <!--/ .container-->

    </section>
    <!--/ .section-->
</asp:Content>
