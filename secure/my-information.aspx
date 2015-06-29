<%@ Page Title="My Information" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="my-information.aspx.vb" Inherits="secure_my_information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 class="">My Information</h3>

    <div class="table-container">
        <div class="table-responsive">
            <table class="table">
                <tbody>
                    <tr>
                        <td class="blue-title">Last Rate Increase Date</td>
                        <td class="blue-title">Anniversay Date</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLastRateIncrease" runat="server" /></td>
                        <td>
                            <asp:Label ID="lblAnniversaryDate" runat="server" /></td>
                    </tr>
                    <tr>
                        <td class="blue-title">Rate Increase Miles</td>
                        <td class="blue-title">Anniversary Miles</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblRateIncreaseMiles" runat="server" /></td>
                        <td>
                            <asp:Label ID="lblAnniversaryMiles" runat="server" /></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- End Table Responsive-->
    <div class="row">
        <div class="col-md-6">
            <div class="info-photo">
                <asp:LoginView ID="LoginView1" runat="server">
                    <LoggedInTemplate>
                        <asp:Image ID="ImageAdmin" Visible="false" runat="server" Height="200" Width="200" />
                    </LoggedInTemplate>
                    <RoleGroups>
                        <asp:RoleGroup Roles="Administrators">
                            <ContentTemplate>
                                <asp:Image ID="ImageDriver" Visible="false" runat="server" Height="200" Width="200" />
                            </ContentTemplate>
                        </asp:RoleGroup>
                    </RoleGroups>

                </asp:LoginView>
            </div>
        </div>

        <div class="col-md-6">
            <div id="DriverManagerAndLastLocation">
                <ul>
                    <li>
                        <span class="pwd-label">Driver Manager</span></li>
                    <li>
                        <asp:Label ID="lblDriverManagerName" runat="server" Text="%Driver Manager%"></asp:Label></li>
                    <li>
                        <span class="pwd-label">Last Location</span></li>
                    <li>
                        <asp:Label ID="lblLastLocation" runat="server" Text="%Last Location%"></asp:Label></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="row top40">

        <div class="panel panel-primary col-md-12 padding-none">
            <div class="panel-heading">
                <h3 class="panel-title">Security Information</h3>
            </div>

            <%--<div class="row">--%>
            <div class="col-md-6">
                <div id="SecuritySystem">
                    <asp:FormView ID="fvwSecuritySystem" runat="server" DataSourceID="SqlDataSourceSecurityReview" DefaultMode="ReadOnly">
                        <ItemTemplate>

                            <div class="panel-body">
                                Approved:
                            <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Bind("IsApproved") %>' Enabled="false" />
                                <br />
                                LockedOut:
                            <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Bind("IsLockedOut") %>' Enabled="false" />
                                <br />
                                Created:
                            <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Bind("CreateDate") %>' />
                                <br />
                                Last Login:
                            <asp:Label ID="LastLoginDateLabel" runat="server" Text='<%# Bind("LastLoginDate") %>' />
                                <br />
                                Password Changed:
                            <asp:Label ID="LastPasswordChangedDateLabel" runat="server" Text='<%# Bind("LastPasswordChangedDate") %>' />
                                <br />
                                Lockout:
                            <asp:Label ID="LastLockoutDateLabel" runat="server" Text='<%# Bind("LastLockoutDate") %>' />
                                <br />
                                Failed Password Attempts:
                            <asp:Label ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Bind("FailedPasswordAttemptCount") %>' />
                                <br />
                                Comment:
                            <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' />
                            </div>
                            </div>
                        </ItemTemplate>
                    </asp:FormView>
                </div>
            </div>

            <div class="col-md-6">
                <div class="pwd-color solid-block">
                    <asp:ChangePassword ID="ChangePassword1" runat="server" CssClass="pwd-color">
                        <ChangePasswordTemplate>
                            <div class="left-side">
                                <label class="pwd-label">Change Driver's Password</label>

                                <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password" class="form-control" Visible="false"></asp:TextBox>
                                <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword" Visible="false">Current Password</asp:Label>
                                <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1" CssClass="fail" Visible="false">*</asp:RequiredFieldValidator>

                                <asp:TextBox ID="NewPassword" runat="server" class="form-control"></asp:TextBox>
                                <asp:Label ID="Label5" runat="server" AssociatedControlID="NewPassword">New Password</asp:Label>
                                <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword1" CssClass="fail">*</asp:RequiredFieldValidator>

                                <asp:TextBox ID="ConfirmNewPassword" runat="server" class="form-control" Visible="false"></asp:TextBox>
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword" Visible="false">Confirm New Password</asp:Label>
                                <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1" CssClass="fail">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangePassword1" CssClass="fail" Visible="false">*</asp:CompareValidator>

                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>

                                <div class="center-buttons">
                                    <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" CssClass="btn-round btn-primary" Text="Submit" ValidationGroup="ChangePassword1" />
                                    <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn-round btn-primary" Text="Cancel" />
                                </div>
                            </div>
                        </ChangePasswordTemplate>
                    </asp:ChangePassword>
                </div>
            </div>
            <%--</div>--%>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceSecurityReview" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_membership %>" SelectCommand="Driver_Portal_Get_LoginStats" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter Name="userName" Type="String" DefaultValue="999703" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

