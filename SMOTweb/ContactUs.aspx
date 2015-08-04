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
							<h3>Let's get in touch</h3>
							<h4>some information about us</h4>
						</div>

					</div><!--/ .col-xs-12-->

				</div><!--/ .row-->

				<div class="row">

					<div class="col-md-6">

						<div class="contact-widget opacity">

							<p class="contact-info">
								Feel free to be in reach us via this contact form and our customer care representatives will get back to you with the closest convenience.
							</p>
							<h4>
								Contact details
							</h4>
							<div class="textwidget contact-info">
								<p><i class="icon-location-2"></i>34789 Magic City Avenue, Los Angeles, CA, 94048, United States</p>
								<p><i class="icon-phone-2"></i>Call: 123 456 789</p>
								<p><i class=" icon-mail-5"></i>E-mail: <a href="mailto:testmail@sitename.com">testmail@sitename.com</a></p>
							</div>

						</div><!--/ .contact-widget-->

					</div><!--/ .col-md-6-->

					<div class="col-md-6">

						<div class="contact-respond opacity">

							<div id="respond">

								<form action="/" class="contact-form" method="post">

									<p class="input-block">
										<input type="text" id="name" placeholder="Name *" name="name" required="" />
									</p>
									<p class="input-block">
										<input type="email" id="email" placeholder="Email *" name="email" required="" />
									</p>
									<p class="input-block">
										<input type="url" id="url" placeholder="Website" name="website" />
									</p>
									<p class="input-block">
										<textarea id="comment" placeholder="Your message " name="message" required=""></textarea>
									</p>
									<p class="input-block">
										<span id="captcha">
											<iframe src="php/capcha_page.php" name="capcha_image_frame"></iframe>
											<input class="verify" type="text" id="verify" name="verify" />
										</span>
										<button id="submit" class="button default input-block-last" type="submit">Submit</button>
									</p>
								</form><!--/ .comments-form-->

							</div><!--/ .respond-->

						</div><!--/ .contact-respond-->

					</div><!--/ .col-md-6-->

				</div><!--/ .row-->

			</div><!--/ .container-->
        </section>
</asp:Content>
