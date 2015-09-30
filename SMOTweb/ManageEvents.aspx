<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageEvents.aspx.cs" Inherits="SMOTweb.ManageEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap/css/bootstrap-custom.css" rel="stylesheet" />
     <link href="../adminLap/assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/uniform/css/uniform.default.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/chosen-bootstrap/chosen/chosen.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/jquery-tags-input/jquery.tagsinput.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/clockface/css/clockface.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/bootstrap-timepicker/compiled/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/bootstrap-colorpicker/css/colorpicker.css" />
    <link rel="stylesheet" href="../adminLap/assets/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
    <link rel="stylesheet" href="../adminLap/assets/data-tables/DT_bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../adminLap/assets/bootstrap-daterangepicker/daterangepicker.css" />
    
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScripts" runat="server">
    <script type="text/javascript" src="../adminLap/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="../adminLap/assets/bootstrap-daterangepicker/date.js"></script>
    <script type="text/javascript" src="../adminLap/assets/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script type="text/javascript" src="../adminLap/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="section" >
        <div class="container">
            <div class="row">
                <asp:Panel ID="PanelGridView" runat="server">
                    <div style="color: #fff !important">
                        <asp:LinkButton ID="btnAddEvent" Style="margin-bottom: 15px" OnClick="btnAddEvent_Click" CssClass="btn btn-success" runat="server"><i class="icon-plus" style="color:white"></i> Add New Event</asp:LinkButton>
                        <asp:GridView ID="GridViewEvents" CssClass="table table-bordered" OnRowCommand="GridViewEvents_RowCommand" AllowPaging="true" OnPageIndexChanging="GridViewEvents_PageIndexChanging" EmptyDataText="No Events" AutoGenerateColumns="false" runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Name" DataField="EventName" />
                                <asp:BoundField HeaderText="Place" DataField="EventPlace" />
                                <asp:BoundField HeaderText="Date" DataField="EventDate" />
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEdit" CssClass="btn btn-primary" CommandName="EditEvent" CommandArgument='<%# Eval("EventID") %>' runat="server"><i class="icon-pencil" style="color:white"></i> Edit</asp:LinkButton>
                                        <asp:LinkButton ID="btnDelete" CssClass="btn btn-danger" CommandName="DeleteEvent" OnClientClick="return confirm('Are you sure you want to delete this Event ?')" CommandArgument='<%# Eval("EventID") %>' runat="server"><i class="icon-trash" style="color:white"></i> Delete</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </asp:Panel>
                <asp:Panel ID="PanelEditEvent" runat="server">
                     <asp:LinkButton ID="btnBack" CssClass="btn btn-danger" OnClick="btnBack_Click" runat="server" Style="margin-bottom: 25px"><i class="icon-backward" style="color:white;"></i> Back to Events</asp:LinkButton>
                    <div class="row">
                        <div class="col-md-5">
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Event Type :
                                </div>
                                <div class="col-md-8">
                                    <asp:DropDownList ID="drpEventType" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Event Name :
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtEventName" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Event Place :
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtEventPlace" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Event Date :
                                </div>

                                <div class="input-append date date-picker col-md-8" data-date-format="dd/mm/yyyy" data-date-viewmode="years">
                                    <asp:TextBox ID="txtEventDate" runat="server" CssClass="m-ctrl-medium date-picker" Font-Size="16"  type="text" Style="direction: ltr"></asp:TextBox>
                                    <span class="add-on">
                                        <i class="icon-calendar"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Time From :
                                </div>

                                <div class="input-append bootstrap-timepicker-component col-md-8">
                                    <asp:TextBox runat="server" CssClass=" m-ctrl-small timepicker-default" type="text" ID="txtEventTimeFrom" />
                                    <span class="add-on">
                                        <i class="icon-time"></i>

                                    </span>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    Time To :
                                </div>

                                <div class="input-append bootstrap-timepicker-component col-md-8">
                                    <asp:TextBox runat="server" CssClass=" m-ctrl-small timepicker-default" type="text" ID="txtEventTimeTo" />
                                    <span class="add-on">
                                        <i class="icon-time"></i>

                                    </span>
                                </div>
                            </div>
                            <div class="row clearfix" style="margin-bottom: 5px">
                                <div class="col-md-4">
                                    T-Shirt Color :
                                </div>
                                <div class="col-md-8">
                                    <asp:TextBox ID="txtEventTshirtcolor" runat="server"></asp:TextBox>
                                </div>
                            </div>
                             <div class="row clearfix" style="margin-bottom: 15px">
                                <div class="col-md-4">
                                    Event Photo :
                                </div>
                                <div class="col-md-8">
                                    <asp:FileUpload ID="FileUploadEventPhoto" runat="server" />
                                </div>
                            </div>
                            <div class="row clearfix">
                                <div class="col-md-12">
                                    <asp:LinkButton ID="btnSave" OnClick="btnSave_Click" Style="float: right" CssClass="btn btn-success" runat="server"> Save <i class="icon-ok" style="color:white"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <div style="text-align: center">
                                <img id="imgEvent" runat="server" src="~/images/noImg.png" style="max-height: 200px;" />
                                <br />
                                <asp:LinkButton ID="btnDeletePhoto" OnClick="btnDeletePhoto_Click" Visible="false" runat="server"><i class="icon-trash" style="color:red"></i> <label style="color:red;font-size:small">Delete Photo</label></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </section>
</asp:Content>
