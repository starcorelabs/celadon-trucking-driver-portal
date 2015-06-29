<%@ Page Title="MLA Thank You" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="mla-thank-you.aspx.vb" Inherits="account_management_mla_thank_you" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="mla-top-label">
                <h2 class="label-color">Welcome to the MLA enrollment</h2>
            </div>
            <hr />
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">Profile Saved</h3>
                </div>
                <div class="panel-body">
                    <div>
                        <p>
                            You signed up for text and/or email.
                        </p>
                    </div>
                    <div class="margin-top10">
                        <p>
                            Wait for a text/email verification message.
                        </p>
                    </div>
                    <div class="margin-top10">
                        <p>
                            You must click on the text/email verification message link to complete the enrollment.
                        </p>
                    </div>
                    <div class="margin-top10 margin-bottom10">
                        <p>
                            Questions or comments?
                        </p>
                        <p>
                            Ask your driver manager for additional details.
                        </p>
                    </div>
                    <p>Want more information on enrolling?</p>
                    <div style="margin-left: 5px;">
                        <a href="http://load.celadontrucking.com/MLA-enrollment-instructions.html" onclick="ga('send', 'event', 'button', 'navigation', 'MLA-enrollment-instructions');">
                            <img src="../img/faq.png" alt="FAQ" class="margin-right10" />
                            <h4 style="display: inline">Getting Started Guide</h4>
                        </a>
                    </div>
                </div>
            </div>
            <div style="margin-left: 70px; padding-bottom: 10px;">
                <a href="../account-management/mla-signup.aspx" class="btn-action-celadon" style="text-decoration: none;">Back to profile</a>
            </div>
        </div>
    </div>
</asp:Content>

