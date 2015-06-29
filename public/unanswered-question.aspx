<%@ Page Title="Unanswered Question" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="unanswered-question.aspx.vb" Inherits="public_unanswered_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h2 class="label-color">Need Help?</h2>
            <hr />
            <p>Want to talk to a live person?</p>
            <p>
                Call the payroll department <a href="tel:18002352366" onclick="ga('send', 'event', 'link', 'action', 'phone-call-payroll');">1-800-235-2366</a>. They can help you get logged into the website and answer any questions you have concerning your settlement statement.
            </p>
        </div>
    </div>
</asp:Content>

