<%@ Page Title="Change Password" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="change-password.aspx.vb" Inherits="account_management_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        table, td {
            width: 100%;
            margin-bottom: 30px;
        }

        .panel {
            width: 335px;
        }

        .panel-title {
            font-size: 18px;
        }

        .auto-style1 {
            width: 78%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 margin-top20">
            <asp:ChangePassword ID="ChangePassword1" runat="server">
                <ChangePasswordTemplate>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <asp:Label runat="server" ID="lblChangePassword" Text="Change Password"></asp:Label></h3>
                        </div>
                        <div class="panel-body">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword" CssClass="pull-left">Current Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1" Display="Dynamic">*</asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword" CssClass="pull-left">New Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="NewPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword1" Display="Dynamic">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword" CssClass="pull-left">Confirm Password:</asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1" Display="Dynamic">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                            <div class="margin-bottom20">
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </div>
                            <div class="center-text margin-bottom20">
                                <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" Text="Change Password" ValidationGroup="ChangePassword1" CssClass="btn-action-celadon margin-bottom20" OnClientClick="ga('send', 'event', 'button', 'action', 'change-password-finish');" />
                                <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'change-password-cancel');" />
                            </div>
                        </div>
                    </div>
                </ChangePasswordTemplate>
                <SuccessTemplate>
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <asp:Label runat="server" ID="lblChangePassword" Text="Change Password Complete"></asp:Label></h2>
                        </div>
                        <div class="panel-body text-center">
                            Your password has been changed!
                                <div>
                                    <asp:Button ID="ContinuePushButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continue" CssClass="btn-action-celadon" Visible="false" />
                                </div>
                        </div>
                </SuccessTemplate>
            </asp:ChangePassword>
        </div>
    </div>
</asp:Content>

