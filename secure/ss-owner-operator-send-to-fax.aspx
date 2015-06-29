<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ss-owner-operator-send-to-fax.aspx.vb" Inherits="secure_ss_owner_operator_send_to_fax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <h3 class="label-color">Fax Settlement</h3>
            <p>
                Celadon will send the <em>
                    <asp:Label ID="lblSettlementDate" runat="server" /></em> settlement to a fax machine
            </p>
            <p>Example 13175556666</p>
            <div class="form-group">
                <asp:TextBox ID="tbFaxNumber" runat="server" CssClass="form-control" />
                <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'fax-settlement');" />
            </div>

            <asp:Panel ID="pnlErrorAfterValidation" runat="server" class="alert alert-danger margin-top10" Visible="false">
                <asp:Label ID="lblErrorAfterValidation" runat="server" Text="We're sorry our systems indicate that is not a valid phone number. Check you  phone number and confirm it is correct." />
            </asp:Panel>
            <asp:Panel ID="pnlSuccess" runat="server" class="alert alert-success margin-top10" Visible="false">
                <asp:Label ID="lblSuccess" runat="server" Text="Fax Sent Successfully" />
            </asp:Panel>

            <p class="margin-top10">
                Faxes are usually transmitted within five minutes but due to a high volume of website usage faxes <em>could be</em> delayed up to an hour. Please plan accordingly.
            </p>
            <div class="center-button">
                <a href="ss-owner-operator-summary.aspx" class="btn-action-celadon margin-top10 button-margin-bottom20" onclick="ga('send', 'event', 'link', 'navigation', 'oo-back-to-settlement');">Back to Settlement</a>
            </div>
        </div>
    </div>
</asp:Content>

