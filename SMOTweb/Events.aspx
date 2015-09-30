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
								<li class="filter" data-filter="buildings"> Buildings</li>
								<li class="filter" data-filter="bridges">Bridges</li>
							</ul><!--/ #portfolio-filter -->		
						</div>

					</div><!--/ .row-->

				</div><!--/ .container-->

				<div class="container">

					  <section id="Section1" class="page">
            <section class="section padding-off">
                
                        <section id="portfolio-items" class="portfolio-items col-3">
                            <asp:Repeater ID="AllEventsRepeter" runat="server" Visible="true">
                                <ItemTemplate>
                                    <article class="architecture mix mix_all">
                                        <div class="work-item-move slideUp3x">
                                            <img src='<%#Eval("MainImagePath") %>' alt="" style="height:275px;" />
                                            <a href='<%# "Events.aspx?Pid=" + Eval("EventID") %>' class="doo">
                                                
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

				</div><!--/ .container-->

			</section><!--/ .padding-bottom-off-->

		</section><!--/ .#folio-->

		<div class="container">

			<div class="row">

				<div class="col-xs-12">

					<div class="portfolio-paging">
						<a data-rel="3" href="page/page-3.html" class="load-more">Load More</a>
					</div><!--/ .portfolio-paging-->

				</div>

			</div><!--/ .row-->

		</div><!--/ .container-->

	</div>
</asp:Content>
