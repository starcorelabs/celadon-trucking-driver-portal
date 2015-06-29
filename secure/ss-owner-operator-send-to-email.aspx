<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ss-owner-operator-send-to-email.aspx.vb" Inherits="secure_ss_owner_operator_send_to_email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <h3 class="label-color">Email Settlement</h3>
            <div>
                <p>
                    Celadon will send the <em>
                        <asp:Label ID="lblSettlementDate" runat="server" /></em> settlement to your email
                </p>
            </div>

            <div class="form-group">
                <asp:TextBox ID="tbEmailAddress" runat="server" CssClass="form-control" Width="220px" />
                <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'email-settlement');" />
                <div>
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbEmailAddress" Style="color: red;">Please enter a valid email</asp:RegularExpressionValidator>
                </div>
            </div>

            <asp:Panel ID="pnlErrorAfterValidation" runat="server" class="alert alert-danger margin-top10" Visible="false">
                <asp:Label ID="lblErrorAfterValidation" runat="server" Text="We're sorry our systems indicate that is not a valid email. Check you email again and confirm it is correct." />
            </asp:Panel>
            <asp:Panel ID="pnlSuccess" runat="server" class="alert alert-success margin-top10" Visible="false" >
                <asp:Label ID="lblSuccess" runat="server" Text="Email Sent Successfully. Check your email account." />
            </asp:Panel>

            <p class="margin-top10">Did you know that every week you can have your settlements delivered automatically to your email?</p>
            <p>Call payroll <a href="tel:+18002352366">1-800-235-2366</a> and let them know you would like to automatically receive your settlements each week.</p>

            <div class="center-button">
                <a href="ss-owner-operator-summary.aspx" class="btn-action-celadon margin-top10 button-margin-bottom20" onclick="ga('send', 'event', 'link', 'navigation', 'oo-back-to-settlement');">Back to Settlement</a>
            </div>
        </div>
    </div>
</asp:Content>

