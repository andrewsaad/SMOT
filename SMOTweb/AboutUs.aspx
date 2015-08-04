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
							<h3>About us</h3>
							<h4>We produce great ideas and build new world</h4>
						</div>

					</div>
					
				</div><!--/ .row-->

				<div class="row">
					
					<div class="col-md-4 col-sm-4">
						<h3 class="content-boxes-title opacity">What we do?</h3>
						<p class="opacity">
							Lorem ipsum dolor sit consectetur adipiscing elit. Pellentesque ut lacus at velit consequat sodales. Ut posuere neque in molestie gravida. 
							Integer eu feugiat neque, elementum posuere purus vitae convallis ipsum.  
						</p>
					</div>

					<div class="col-md-4 col-sm-4">
						<h3 class="content-boxes-title opacity">What is our process?</h3>
						<p class="opacity">
							Lorem ipsum dolor sit consectetur adipiscing elit. Pellentesque ut lacus at velit consequat sodales. Ut posuere neque in molestie gravida. 
							Integer eu feugiat neque, elementum posuere purus vitae convallis ipsum.  
						</p>
					</div>

					<div class="col-md-4 col-sm-4">
						<h3 class="content-boxes-title opacity">Why Choose Us?</h3>
						<p class="opacity">
							Lorem ipsum dolor sit consectetur adipiscing elit. Pellentesque ut lacus at velit consequat sodales. Ut posuere neque in molestie gravida. 
							Integer eu feugiat neque, elementum posuere purus vitae convallis ipsum. 
						</p>
					</div>

				</div><!--/ .row-->

			</div><!--/ .container-->

		</section><!--/ .section-->
</asp:Content>
