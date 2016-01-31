<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageContactInformation.aspx.cs" Inherits="SMOTweb.ManageContactInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/css/bootstrap-custom.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section-title opacity">
                        <h3>Manage Contact Information</h3>
                    </div>
                </div>
                <!--/ .col-xs-12-->
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row clearfix" style="margin-bottom: 5px">
                        <div class="col-md-2">
                            Location :
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row clearfix" style="margin-bottom: 5px">
                        <div class="col-md-2">
                            Telephone :
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row clearfix" style="margin-bottom: 5px">
                        <div class="col-md-2">
                            Mail :
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row clearfix" style="margin-bottom: 5px">
                        <div class="col-md-2">
                            Facebook Link :
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtFacebook" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row clearfix" style="margin-bottom: 5px">
                        <div class="col-md-2">
                            Page Content :
                        </div>
                        <div class="col-md-8">
                            <textarea id="txtPageContent" class="ckeditor" style="width: 100%" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="row clearfix">
                        <div class="col-md-12">
                            <asp:LinkButton OnClick="btnSaveInfo_Click" ID="btnSaveInfo" Style="float: right" CssClass="btn btn-success" runat="server"> Save <i class="icon-ok" style="color:white"></i></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:HiddenField ID="hfPageContect" ClientIDMode="Static" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="server">
    <script src="../ckeditor/ckeditor.js"></script>
</asp:Content>
