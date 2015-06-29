<%@ Page Title="Request W2" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="w2.aspx.vb" Inherits="secure_w2" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server" />
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
<div class="col-md-8 col-md-offset-2 margin-bottom30">

        <h3 class="label-color">Request W2</h3>
            <asp:Panel ID="pnlNoRecords" runat="server">
                <div style="text-align: center; margin-top: 40px;">
                    <p class="alert alert-danger">No W2 Records Found</p>
                </div>
                <div>
                    <p>Please contact the payroll department <a href="tel:+18002352366">1-800-235-2366</a> if you have questions concerning your 1099 MISC.</p>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlControls" runat="server">

                <div>
                    <table>
                        <tr>
                            <td>
                                <label>PDF Download</label><img src="../img/icon-pdf.png" class="margin-left10" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlTaxYear" runat="server" CssClass="form-control margin-bottom10" Width="150" />
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="padding-top10">
                                <asp:Button ID="btnDownloadPDF" runat="server" Text="Download" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'pdf-download-w2');" />
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="padding-top10">
                                <label class="margin-top10">Email Address</label></td>
                            <td>
                                <asp:Label ID="lblCheckYourEmail" runat="server" Text="Sent. Check your email." Visible="false" Style="padding-top: 10px; padding-bottom: 10px;" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="tbEmailAddress" runat="server" CssClass="form-control margin-bottom10" Width="150"/>
                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ControlToValidate="tbEmailAddress" Display="Dynamic" ErrorMessage="Can't send email. Check your email addess." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="padding-top10">
                                <asp:Button ID="btnEmailSend" runat="server" Text="Send" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'email-w2');" />
                            </td>

                        </tr>
                        <tr>
                            <td class="padding-top10">
                                <label class="margin-top10">Fax Number</label></td>
                            <td>
                                <asp:Label ID="lblCheckYourFax" runat="server" Text="Sent. Check your fax machine." Visible="false" Style="padding-top: 10px; padding-bottom: 10px;" />

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dx:ASPxTextBox ID="tbFaxNumber" runat="server" ClientInstanceName="clTxtPhone" CssClass="form-control margin-bottom10" Width="150">
                                    <MaskSettings IncludeLiterals="None" Mask="+1 (999) 000-0000" />
                                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip" />
                                </dx:ASPxTextBox>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td class="padding-top10">
                                <asp:Button ID="btnFaxSend" runat="server" Text="Send" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'fax-w2');" /></td>
                        </tr>
                    </table>
                </div>
            </asp:Panel>
    </div>
</div>
</asp:Content>

