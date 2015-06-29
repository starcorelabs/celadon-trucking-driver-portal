<%@ Page Title="Forgot Password" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forgot-password.aspx.vb" Inherits="public_forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function autoTab(currentControl, maxLength, nextControl) {
            if (currentControl.value.length >= maxLength)
                document.getElementById(nextControl).focus();
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-2">
            <h3 class="label-color">Forgot Password</h3>
            <hr />
        </div>
    </div>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" cssclass="row">
        <ContentTemplate>
              <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-2">
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" DisplaySideBar="False">
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'forgot-password-start');" />
                </StartNavigationTemplate>
                <WizardSteps>
                    <%--Get Driver ID--%>
                    <asp:WizardStep ID="WizardStepDriverID" runat="server" Title="Identification" AllowReturn="False" StepType="Start">
                                <asp:Panel ID="pnlAlertDriverID" runat="server" Visible="false">
                                    <div class="alert alert-danger">
                                        <asp:Label ID="lblAlertDriverIDErrorMessage" runat="server" />
                                    </div>
                                </asp:Panel>
                                <label>Driver ID</label>
                                <asp:TextBox ID="tbDriverID" runat="server" CssClass="form-control" MaxLength="9" Width="100px" />
                    </asp:WizardStep>

                    <%--Challenge Question--%>
                    <asp:WizardStep ID="WizardStepChallengeQuestion" runat="server" Title="Challenge Question" StepType="Step">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">Challenge Question</h5>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Panel ID="pnlAlertChallengeQuestion" runat="server" Visible="false">
                                            <div class="alert alert-danger">
                                                <asp:Label ID="lblAlertChallengeQuestionErrorMessage" runat="server" Text="Your answer is incorrect. Please try again." />
                                            </div>
                                        </asp:Panel>
                                        <div>
                                            <asp:Label ID="lblChallengeQuestion" runat="server" Text="Users challenge questions" />
                                        </div>
                                        <div>
                                            <asp:TextBox ID="tblChallengeAnswer" runat="server" AutoCompleteType="None" CssClass="form-control" Width="100%" />
                                        </div>
                                    </div>
                                </div>

                            <%--Driver Division--%>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">Driver Division</h5>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Panel ID="pnlAlertDriverDivision" runat="server" Visible="false">
                                            <div class="alert alert-danger">
                                                <asp:Label ID="lblAlertDriverDivisionErrorMessage" runat="server" Text="Your answer is incorrect. Please try again." />
                                            </div>
                                        </asp:Panel>
                                        <span>What type of driver are you currently?</span>
                                        <asp:RadioButtonList ID="rblDriverType" runat="server">
                                            <asp:ListItem>Company Driver</asp:ListItem>
                                            <asp:ListItem>Jaguar Driver</asp:ListItem>
                                            <asp:ListItem>Owner Operator</asp:ListItem>
                                            <asp:ListItem>Canadian Driver / Hyndman</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>

                            <%--DOB--%>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">Date of Birth</h5>
                                    </div>
                                    <div class="panel-body">

                                        <asp:Panel ID="pnlAlertDOB" runat="server" Visible="false">
                                            <div class="alert alert-danger">
                                                <asp:Label ID="lblAlertDOBErrorMessage" runat="server" Text="Your answer is incorrect. Please try again." />
                                            </div>
                                        </asp:Panel>

                                        <table style="text-align: center;">
                                            <tr>
                                                <td><span>Month</span></td>
                                                <td></td>
                                                <td><span>Day</span></td>
                                                <td></td>
                                                <td><span>Year</span></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="tbMonth" runat="server" Width="57px" MaxLength="2" CssClass="form-control" onkeyup="autoTab(this,'2','ContentPlaceHolder1_Wizard1_tbDay');" /></td>
                                                <td><span class="text-date-slash-big">/</span></td>
                                                <td>
                                                    <asp:TextBox ID="tbDay" runat="server" Width="57px" MaxLength="2" CssClass="form-control" onkeyup="autoTab(this,'2','ContentPlaceHolder1_Wizard1_tbYear');" /></td>
                                                <td><span class="text-date-slash-big">/</span></td>
                                                <td>
                                                    <asp:TextBox ID="tbYear" runat="server" Width="65px" MaxLength="4" CssClass="small-indent form-control" /></td>
                                                <td></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                         </asp:WizardStep>

                    <%--Change Password--%>
                    <asp:WizardStep ID="WizardStepChangePassword" runat="server" Title="Change Password" StepType="Finish">
                        <div class="row">
                     
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">New Password</h5>
                                    </div>
                                    <div class="panel-body">
                                        <asp:Panel ID="pnlAlertPassword" runat="server" Visible="false">
                                            <div class="alert alert-danger">
                                                <asp:Label ID="lblAlertasswordsErrorMessage" runat="server" Text="Entered passwords must match." />
                                            </div>
                                        </asp:Panel>
                                        <div>
                                            New Password
                                        </div>
                                        <div>
                                            <asp:TextBox ID="tbPassword1" runat="server" AutoCompleteType="None" TextMode="password" CssClass="form-control" />
                                        </div>
                                        <div>Re-Type Password</div>
                                        <div>
                                            <asp:TextBox ID="tbPassword2" runat="server" AutoCompleteType="None" TextMode="password" CssClass="form-control" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </asp:WizardStep>

                    <%--Success Message--%>
                    <asp:WizardStep ID="WizardStepPasswordChanged" runat="server" Title="Password Changed" StepType="Complete">
                        <div class="row">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5 class="panel-title">Success</h5>
                                    </div>
                                    <div class="panel-body">
                                        <div class="alert alert-success">
                                            Your password has been changed.
                                        </div>
                                        <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/public/login.aspx" onclick="ga('send', 'event', 'button', 'action', 'forgot-password-complete');">Click here to login using your new password</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                    </asp:WizardStep>
                </WizardSteps>

                <StepNextButtonStyle CssClass="btn-action-celadon" />
                <FinishNavigationTemplate>
                            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'forgot-password-finish');" />
                </FinishNavigationTemplate>
            </asp:Wizard>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
