<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="SMOTweb.Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#navEvents').addClass('current-menu-item');
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">

        <section id="folio" class="page">

            <section class="padding-bottom-off">

                <div class="container">

                    <div class="row">

                        <div class="col-xs-12">
                            <ul id="portfolio-filter" class="portfolio-filter">
                                <li class="filter active" data-filter="all">All</li>
                                <li class="filter" data-filter="architecture">Architecture</li>
                                <li class="filter" data-filter="buildings">Buildings</li>
                                <li class="filter" data-filter="bridges">Bridges</li>
                            </ul>
                            <!--/ #portfolio-filter -->
                        </div>

                    </div>
                    <!--/ .row-->

                    <div class="row">
                        <asp:Repeater ID="EventsDetailsRepeter" runat="server" Visible="true">
                            <ItemTemplate>
                                <div class="col-md-8">

                                    <div class="side-image-slider opacity">

                                        <ul id="image-slider" class="popup-gallery">

                                            <li class="item">
                                                <div class="image-entry">

                                                    <a href='<%#Eval("MainImagePath") %>' class="single-image popup-link lazy-image img">

                                                        <img src='<%#Eval("MainImagePath") %>' alt="">
                                                    </a>
                                                </div>
                                            </li>





                                        </ul>
                                        <!--/ #image-slider-->

                                        <div class='owl-counter'>
                                            <span class='currentPosition'></span>
                                            <span class="allItems"></span>
                                        </div>

                                    </div>
                                    <!--/ .side-image-slider-->

                                </div>
                                <!--/ .col-md-8-->

                                <div class="col-md-4">

                                    <aside class="side-gallery-panel opacity">

                                        <h2 class="side-gallery-title"><%#Eval("EventName") %></h2>
                                        <p>
                                            Nam convallis ipsum. Maecenas a vulputate ipsum, vestibulum lobortis enim. 
							Sed consequat felis. Proin amet sollicitudin neque, a rhoncus nisl. Aliquam malesuada 
							elementum risus, sit amet dictum erat tempor nec. Suspendisse massa, pellentesque. 
					
                                        </p>

                                        <ul class="side-meta">

                                            <li>
                                                <b class="side-meta-title">Date:</b>
                                                <b class="side-text"><%#Eval("EventDate") %></b>
                                            </li>
                                            <li>
                                                <b class="side-meta-title">Place:</b>
                                                <b class="side-text"><%#Eval("EventPlace") %></b>
                                            </li>


                                        </ul>
                                        <!--/ .side-meta-->



                                    </aside>
                                    <!--/ .side-gallery-panel-->

                                </div>
                                <!--/ .col-md-4-->
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!--/ .container-->




                </div>
                <div class="container">

                    <section id="Section1" class="page">
                        <section class="section padding-off">

                            <section id="portfolio-items" class="portfolio-items col-3">
                                <asp:Repeater ID="AllEventsRepeter" runat="server" Visible="true">
                                    <ItemTemplate>
                                        <article class="architecture mix mix_all">
                                            <div class="work-item-move slideUp3x">
                                                <img src='<%#Eval("MainImagePath") %>' alt="" style="height: 275px;" />
                                                <a href='<%# "Events.aspx?Eid=" + Eval("EventID") %>' class="doo">

                                                    <div class="image-extra">
                                                        <div class="extra-content">
                                                            <h2 class="extra-title"><%# (Eval("EventName").ToString().Length <=15) ? Eval("EventName") : Eval("EventName").ToString().Substring(0, 12) + ".." %></h2>
                                                        </div>
                                                        <!--/ .extra-content-->
                                                    </div>
                                                </a>
                                                <!--/ .image-extra-->
                                            </div>

                                            <!--/ .work-item-move-->
                                        </article>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </section>

                        </section>

                    </section>

                </div>
                <!--/ .container-->


            </section>
            <!--/ .padding-bottom-off-->

        </section>
        <!--/ .#folio-->

        <!--/ .container-->

    </div>

</asp:Content>
