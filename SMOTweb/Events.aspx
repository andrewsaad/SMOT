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

					<div class="row">

						<div class="col-xs-12">

							<section id="portfolio-items" class="portfolio-items col-3">

								<article class="architecture mix mix_all">

									<div class="work-item lazy-image img">
										<div class="lazy">
											<i  class="G G_1"></i>
											<i  class="G G_2"></i>
											<i  class="G G_3"></i>
											<i  class="G G_4"></i>
											<i  class="G G_5"></i>
											<i  class="G G_6"></i>
											<i  class="G G_7"></i>
											<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="single-full-width-slider.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Lorem ipsun</h2>
													<h6 class="extra-descript">Architecture</h6>											
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->

								</article>					

								<article class="buildings mix mix_all">

									<div class="work-item lazy-image img">
                                        <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="single-full-slider.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Night city</h2>
													<h6 class="extra-descript">Buildings</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->						

								</article>					

								<article class="bridges mix mix_all">

									<div class="work-item lazy-image img">
                                        <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="single-2-3-gallery.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Steel Structure Bridge</h2>
													<h6 class="extra-descript">Bridges</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->	

								</article>					

								<article class="bridges mix mix_all">

									<div class="work-item lazy-image img">
                                         <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="blog-single.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Millenium bridge</h2>
													<h6 class="extra-descript">Bridges</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->	

								</article>					

								<article class="bridges mix mix_all">

									<div class="work-item lazy-image img">
                                         <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="single-2-3-gallery.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Modern bridge</h2>
													<h6 class="extra-descript">Bridges</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->	

								</article>					

								<article class="architecture mix mix_all">

									<div class="work-item lazy-image img">
                                         <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="single-2-3-gallery.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Modern interior</h2>
													<h6 class="extra-descript">Architecture</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->	

								</article>					

								<article class="buildings mix mix_all">

									<div class="work-item lazy-image img">
                                         <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="blog-single.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Bridge 1</h2>
													<h6 class="extra-descript">Buildings</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->	

								</article>					

								<article class="bridges mix mix_all">

									<div class="work-item lazy-image img">
                                        <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="single-2-3-gallery.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">Modern office</h2>
													<h6 class="extra-descript">Bridges</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->	

								</article>					

								<article class="bridges mix mix_all">

									<div class="work-item lazy-image img">
                                        <div class="lazy">
												<i  class="G G_1"></i>
												<i  class="G G_2"></i>
												<i  class="G G_3"></i>
												<i  class="G G_4"></i>
												<i  class="G G_5"></i>
												<i  class="G G_6"></i>
												<i  class="G G_7"></i>
												<i  class="G G_8"></i>
										</div>
										<img src="http://placehold.it/840x615" alt="" />
										<a href="single-full-slider.html">
											<div class="image-extra">
												<div class="extra-content">
													<h2 class="extra-title">London</h2>
													<h6 class="extra-descript">Bridges</h6>
												</div><!--/ .extra-content-->
											</div><!--/ .image-extra-->
										</a>
									</div><!--/ .work-item-->	

								</article>					

							</section><!--/ .portfolio-items-->

						</div>

					</div><!--/ .row-->

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
