<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MMBB1.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
       <div class="col-sm-12">
            <%--BEGIN Container --%>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <%--<div class="page-header">
                        <h2>Asp.net Contact Form <small>Bootstrap Edition</small></h2>
                    </div>
                    <h4>Source code is available at CodeCanyon </h4>
                    <a href="https://codecanyon.net/item/aspnet-contact-form-html-email-bootstrap-edition/18908000" class="btn">Buy Now</a>
                    <br />
                    <br />
                    <h5>This is a demo version for sending the HTML email via Asp.net contact Form</h5>--%>
                    <br />
                    <div class="panel">
                        <div class="panel-heading">
                            <h4>Fill in the following form to contact us</h4>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-md-4 control-label">Your Name</label>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fas fa-user"></i></span>
                                        <asp:TextBox ID="txtName" runat="server" placeholder="Your Name" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Your email</label>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fas fa-envelope"></i></span>
                                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Your email address" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Subject</label>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fas fa-tag"></i></span>
                                        <asp:DropDownList ID="ddlSubject" class="form-control selectpicker" runat="server">
                                            <asp:ListItem>General Enquiry</asp:ListItem>
                                            <asp:ListItem>Sales</asp:ListItem>
                                            <asp:ListItem>Technical Support</asp:ListItem>
                                            <asp:ListItem>Report Issue</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Message</label>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fas fa-pencil-alt"></i></span>
                                        <asp:TextBox ID="txtMessage" runat="server" class="form-control" placeholder="Type your message here..." Height="100px" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Captcha</label>
                                <div class="col-md-6">
                                    <div class="g-recaptcha" data-sitekey="6LerGNQUAAAAABYlWzCONRXkFmD11ZyAEOzCoVKr" data-theme="light"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <input id="checkbox2" name="agree" type="checkbox">
                                        <label for="checkbox2">
                                            Agree with the terms and conditions                       
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <hr />
                                <asp:Button ID="btnSendEmail" runat="server" CssClass="btn" OnClick="btnSendEmail_Click" Text="Send Email"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--END Container --%>
        </div>
    </div>
    <div><br /></div>

    <div class="row">
        <div class="col-sm-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6687.16954370959!2d-122.44878118486432!3d47.40817845410721!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54904fe75e6464a3%3A0x130e7b31b444e16f!2sMadrona%20Meadows%20Bed%20%26%20Barn!5e0!3m2!1sen!2sus!4v1580270576542!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe><br />
            <p><a style="text-align: left; color: rgb(0, 0, 255);" href="https://maps.google.com/maps/ms?msid=209814322791272977712.0004db9dc911319f43d3d&amp;msa=0&amp;ie=UTF8&amp;t=m&amp;ll=47.426694,-122.46254&amp;spn=0.232269,0.342636&amp;z=11&amp;source=embed" target="_blank">View the larger Vashon map</a></p>
        </div>
    </div>

    <%--BEGIN JavaScript--%>
    <script src='https://www.google.com/recaptcha/api.js' data-size="small" async defer></script>
    <script src="Sripts/bootstrapValidator.min.js"></script>
    <script src="Scripts/notify.js"></script>

    <script type="text/javascript">
        //Notify Messages.
        //NOTE: The message types are: 'danger', 'warning', 'info', 'success'.
        function Notification(message, type) {
            $.notify(message, type);
        }

        //====================================================================================================
        // Form validations on btnSendEmail click event.
        //====================================================================================================
        $("#btnSendEmail").click(function () {
            $('#frmContact').bootstrapValidator({
                // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
                feedbackIcons: {
                    //valid: 'glyphicon glyphicon-ok',
                    //invalid: 'glyphicon glyphicon-remove',
                    //validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    txtName: {
                        validators: {
                            stringLength: {
                                min: 6,
                                message: 'Please enter at least 6 characters'
                            },
                            notEmpty: {
                                message: 'Please provide your name'
                            }
                        }
                    },
                    ddlSubject: {
                        validators: {
                            notEmpty: {
                                message: 'Please select your subject'
                            }
                        }
                    },
                    txtMessage: {
                        validators: {
                            stringLength: {
                                min: 10,
                                max: 200,
                                message: 'Please enter at least 10 characters and no more than 200'
                            },
                            notEmpty: {
                                message: 'Please leave us a message'
                            }
                        }
                    },
                    txtEmail: {
                        validators: {
                            notEmpty: {
                                message: 'Please provide your email address'
                            },
                            emailAddress: {
                                message: 'Please provide a valid email address'
                            }
                        }
                    },
                    agree: {
                        validators: {
                            notEmpty: {
                                message: 'You must agree with the terms and conditions'
                            }
                        }
                    }
                }
            })
        });
    </script>
    <%--END JavaScript--%>

</asp:Content>
