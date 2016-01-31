<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="SMOTweb.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#navServices').addClass('current-menu-item');
                });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <section class="section padding-top-off">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h2 class="services-title opacity2x">Organized, Safe, fresh minds and love - we know how to make you like it!</h2>
                    </div>
                </div>
                <!--/ .row-->
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="box-article">
                            <a href="#" class="opacity">
                                <div class="content-circle">
                                    <i class="icon-sitemap"></i>
                                </div>
                                <div class="content-text">
                                    <h3 class="content-boxes-title">Organizing</h3>
                                    <p>
                                        Nam vitae convallis ipsum. Maecenas a vulputate ipsum, vestibulum lobortis enim. Sed consequat felis. 
                                   
                                    </p>
                                </div>
                            </a>
                        </div>
                        <!--/ .box-article-->
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="box-article">
                            <a href="#" class="opacity">
                                <div class="content-circle">
                                    <i class="icon-shield"></i>
                                </div>
                                <div class="content-text">
                                    <h3 class="content-boxes-title">Security</h3>
                                    <p>
                                        Nam vitae convallis ipsum. Maecenas a vulputate ipsum, vestibulum lobortis enim. Sed consequat felis. 
                                   
                                    </p>
                                </div>
                            </a>
                        </div>
                        <!--/ .box-article-->
                    </div>
                    <div class="col-lg-3 col-sm-6">

                        <div class="box-article">

                            <a href="#" class="opacity">
                                <div class="content-circle">
                                    <i class="icon-user-md"></i>
                                </div>

                                <div class="content-text">

                                    <h3 class="content-boxes-title">Safety</h3>
                                    <p>
                                        Nam vitae convallis ipsum. Maecenas a vulputate ipsum, vestibulum lobortis enim. Sed consequat felis. 
								
                                    </p>

                                </div>
                            </a>

                        </div>
                        <!--/ .box-article-->

                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="box-article">

                            <a href="#" class="opacity">
                                <div class="content-circle">
                                    <i class="icon-puzzle"></i>
                                </div>

                                <div class="content-text">

                                    <h3 class="content-boxes-title">Fun</h3>
                                    <p>
                                        Nam vitae convallis ipsum. Maecenas a vulputate ipsum, vestibulum lobortis enim. Sed consequat felis. 
								
                                    </p>

                                </div>
                            </a>

                        </div>
                        <!--/ .box-article-->

                    </div>
                    
                </div>
                <!--/ .row-->

            </div>
            <!--/ .container-->
        </section>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="server">
</asp:Content>
