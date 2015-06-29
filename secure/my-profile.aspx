<%@ Page Title="My Profile" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="my-profile.aspx.vb" Inherits="secure_my_profile" EnableViewState="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <h2 class="label-color">My Profile</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <asp:LoginView ID="LoginView1" runat="server">
                <RoleGroups>
                    <asp:RoleGroup Roles="Administrators">
                        <ContentTemplate>

                            <div class="row">
                                <div class="col-md-12">
                                    <h4 class="label-color">Administrator Information</h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-md-3">
                                    <asp:Image ID="ImageDriver" runat="server" Width="150" cssclass="img-rounded" />
                                </div>
                                <div class="col-xs-12 col-md-9">
                                    <table class="table-admin">
                                        <tr>
                                            <td>Name</td>
                                            <td>
                                                <asp:Label ID="labelName" runat="server" Text="labelName" /></td>
                                        </tr>

                                        <tr>
                                            <td>Driver ID</td>
                                            <td>
                                                <asp:Label ID="labelDriverID" runat="server" Text="labelDriverID" /></td>
                                        </tr>
                                        <tr>
                                            <td>Truck Number</td>
                                            <td>
                                                <asp:Label ID="labelTruckNumber" runat="server" Text="labelTruckNumber" /></td>
                                        </tr>
                                        <tr>
                                            <td>Fleet</td>
                                            <td>
                                                <asp:Label ID="labelFleet" runat="server" Text="labelFleet" /></td>
                                        </tr>
                                        <tr>
                                            <td>Business Segment</td>
                                            <td>
                                                <asp:Label ID="lblBusinessSegment" runat="server" Text="lblBusinessSegment" /></td>
                                        </tr>

                                        <tr>
                                            <td>Team Driver</td>
                                            <td>
                                                <asp:Label ID="lblTeamDriver" runat="server" Text="lblTeamDriver" /></td>
                                        </tr>

                                        <tr>
                                            <td>Employment Status</td>
                                            <td>
                                                <asp:Label ID="labelEmploymentStatus" runat="server" Text="labelEmploymentStatus" /></td>
                                        </tr>
                                        <tr>
                                            <td>Payroll Type</td>
                                            <td>
                                                <asp:Label ID="labelPayrollType" runat="server" Text="labelPayrollType" /></td>
                                        </tr>
                                        <tr>
                                            <td>Date of Birth</td>
                                            <td>
                                                <asp:Label ID="LabelDOB" runat="server" Text="LabelDOB" /></td>
                                        </tr>
                                    </table>

                                    <asp:FormView ID="fvwSecuritySystem" runat="server" DataSourceID="SqlDataSourceSecurityReview" DefaultMode="ReadOnly">
                                        <ItemTemplate>
                                            <table class="table-admin">
                                                <tr>
                                                    <td>Approved</td>
                                                    <td>
                                                        <asp:CheckBox ID="IsApprovedCheckBox" runat="server" Checked='<%# Bind("IsApproved") %>' Enabled="false" /></td>
                                                </tr>
                                                <tr>
                                                    <td>LockedOut</td>
                                                    <td>
                                                        <asp:CheckBox ID="IsLockedOutCheckBox" runat="server" Checked='<%# Bind("IsLockedOut") %>' Enabled="false" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Created</td>
                                                    <td>
                                                        <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Bind("CreateDate") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Last Login</td>
                                                    <td>
                                                        <asp:Label ID="LastLoginDateLabel" runat="server" Text='<%# Bind("LastLoginDate") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Password Changed</td>
                                                    <td>
                                                        <asp:Label ID="LastPasswordChangedDateLabel" runat="server" Text='<%# Bind("LastPasswordChangedDate") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Lockout</td>
                                                    <td>
                                                        <asp:Label ID="LastLockoutDateLabel" runat="server" Text='<%# Bind("LastLockoutDate") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Failed Password Attempts</td>
                                                    <td>
                                                        <asp:Label ID="FailedPasswordAttemptCountLabel" runat="server" Text='<%# Bind("FailedPasswordAttemptCount") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Comment</td>
                                                    <td>
                                                        <asp:Label ID="CommentLabel" runat="server" Text='<%# Bind("Comment") %>' /></td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:FormView>
                                </div>
                            </div>

                        </ContentTemplate>
                    </asp:RoleGroup>
                </RoleGroups>
            </asp:LoginView>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <div class="row top10">
                <div class="col-xs-12 col-md-9">
                    <h4 class="label-color">Employment Information</h4>
                    <asp:Panel ID="panelWarningMessage" runat="server">
                        <div class="alert alert-danger">
                            <asp:Label ID="lblWarningMessage" runat="server" Text="Warning Message" />
                            <span>Contact payroll </span><a class="text-danger" href="tel:18002352366" onclick="ga('send', 'event', 'link', 'action', 'phone-call-payroll-my-profile');">1-800-235-2366</a>
                        </div>
                    </asp:Panel>

                    <table class="table-employment">
                        <tr>
                            <td>Date of Hire</td>
                            <td>
                                <asp:Label ID="LabelDateOfHire" runat="server" Text="LabelDateOfHire" /></td>
                        </tr>
                        <tr>
                            <td>Years of Service</td>
                            <td>
                                <asp:Label ID="LabelYearsAndMonthsFromHireDate" runat="server" Text="LabelYearsAndMonthsFromHireDate" /></td>
                        </tr>
                        <tr>
                            <td>CDL State</td>
                            <td>
                                <asp:Label ID="LabelCDLstate" runat="server" Text="LabelCDLstate" /></td>
                        </tr>

                    </table>
                    <asp:Panel ID="pnlUSREALCT_DRV0001R1_RateIncreases" runat="server">
                        <table class="table-employment">
                            <tr>
                                <td>
                                    <asp:Literal ID="ltlLastRateIncrease" runat="server" Text="Last Rate Increase" /></td>
                                <td>
                                    <asp:Label ID="lblLastRateIncrease" runat="server" Text="lblLastRateIncrease" /></td>
                            </tr>
                            <tr>
                                <td>Miles to Rate Increase</td>
                                <td>
                                    <asp:Label ID="lblMilesToRateIncrease" runat="server" Text="lblMilesToRateIncrease" /></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Literal ID="ltlAniversaryMiles" runat="server" Text="Aniversary Miles" /></td>
                                <td>
                                    <asp:Label ID="lblAniversaryMiles" runat="server" Text="lblAniversaryMiles" /></td>
                            </tr>
                        </table>

                    </asp:Panel>


                    <h4 class="label-color">Payroll Information</h4>
                    <table class="table-payroll">
                        <tr>
                            <td style="padding-bottom: 10px;">Form W4 Tax Dependents</td>
                            <td style="padding-bottom: 10px;">
                                <asp:Label ID="LabelW4dependants" runat="server" Text="LabelW4dependants" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">Personal Address</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="LabelAddressLine1" runat="server" Text="LabelAddressLine1" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="LabelAddressLine2" runat="server" Text="LabelAddressLine2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div style="margin-bottom: 10px;">
                                    <asp:Label ID="LabelAddressCity" runat="server" Text="LabelAddressCity" />
                                    <asp:Label ID="LabelAddressState" runat="server" Text="LabelAddressState" />
                                    <asp:Label ID="LabelAddressZip" runat="server" Text="LabelAddressZip" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Home Phone</td>
                            <td>
                                <asp:Label ID="LabelPhoneHome" runat="server" Text="LabelPhoneHome" /></td>
                        </tr>
                        <tr>
                            <td>Cell Phone</td>
                            <td>
                                <asp:Label ID="LabelPhoneCell" runat="server" Text="LabelPhoneCell" /></td>
                        </tr>
                        <tr>
                            <td>Email Address</td>
                            <td>
                                <asp:Label ID="LabelEmail" runat="server" Text="LabelEmail" /></td>
                        </tr>

                    </table>

                    <h4 class="label-color">Emergency Contact</h4>
                    <table class="table-emergency">
                        <tr>
                            <td>Contact</td>
                            <td>
                                <asp:Label ID="LabelEmergencyContact" runat="server" Text="LabelEmergencyContact" /></td>
                        </tr>
                        <tr>
                            <td>Contact Phone</td>
                            <td>
                                <asp:Label ID="LabelAddressEmergencyContactPhone" runat="server" Text="LabelAddressEmergencyContactPhone" /></td>
                        </tr>
                    </table>
                </div>

                <div class="col-xs-12 col-md-3">
                    <asp:Panel ID="pnlDriverManagers" runat="server">
                    <h4 class="label-color">Driver Managers</h4>
                    <asp:ListView ID="lvDriverManagers" runat="server">
                        <LayoutTemplate>
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="admin-photo">
                                <figure>
                                    <asp:Image ID="colPhoto" runat="server" Width="100%" CssClass="img-rounded" />
                                    <figcaption style="width: 100%;">
                                        <asp:Label ID="labelDriverManagerFullName" runat="server" />
                                    </figcaption>
                                </figure>
                            </div>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <div>
                                No current driver managers found.
                            </div>
                        </EmptyDataTemplate>
                    </asp:ListView>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>

    <asp:Panel ID="panelAwards" runat="server">

        <div class="row top10 margin-bottom20">
            <div class="col-md-8 col-md-offset-2">
                <h4 class="label-color">Awards and Honors</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 col-md-offset-2 margin-bottom30">
                <asp:Panel ID="panelIndividualAwards" runat="server" />
            </div>
        </div>
    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSourceSecurityReview" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_membership %>" SelectCommand="Driver_Portal_Get_LoginStats" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter Name="userName" Type="String" DefaultValue="999703" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

