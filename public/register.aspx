<%@ Page Title="Register" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="public_register" %>

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
        <div class="col-xs-12 col-sm-12 col-md-12">
            <h2 class="label-color">New Driver Registration</h2>
            <hr />
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <asp:Panel ID="pnlWarning" runat="server" class="alert alert-danger" Visible="false">
                <asp:Label ID="lblCustomErrorMessage" runat="server" />
            </asp:Panel>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <asp:Panel ID="pnlDriverID" runat="server">
                <asp:Label ID="lblUserName" runat="server" AssociatedControlID="txtUserName" Text="Driver ID" />
                <asp:TextBox ID="txtUserName" runat="server" class="form-control" CssClass="input-box form-control" MaxLength="9" Width="100px" />
                <asp:Button ID="btnNext" runat="server" Text="Next" Width="80" CssClass="btn-action-celadon" CausesValidation="true" OnClientClick="ga('send', 'event', 'button', 'action', 'register-next');" />
            </asp:Panel>
        </div>
    </div>

    <div class="master-center">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12">
                        <asp:Panel ID="pnlAlreadyRegesteredError" runat="server" Visible="false">
                            <div class="alert alert-danger">
                                Driver ID is already registered.
                            </div>
                            <div>
                                Sorry for your inconvenience. If you feel this is incorrect please contact the driver payroll department at your earliest convenience.
                        <!--Microdata-->
                                <div itemtype="http://schema.org/LocalBusiness" class="margin-top20">
                                    Celadon Question Line <span itemprop="telephone"><a href="tel:+18007583252">1-800-758-3252</a></span>
                                </div>
                            </div>
                            <div class="margin-top20">
                                <div>
                                    <label>Forgot your password? </label>
                                    <asp:LinkButton ID="btnForgot" runat="server" Text="Click here" OnClick="btnForgot_Click" OnClientClick="ga('send', 'event', 'button', 'action', 'register-forgot-password');" />
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </div>

                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" class="margin-top20" Visible="False">
                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <asp:Label ID="lblUserName" runat="server" />
                                        <asp:TextBox ID="UserName" runat="server" Visible="false" CssClass="form-control" />
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="UserName" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" CssClass="fail">*</asp:CompareValidator>
                                        <%--Email--%>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h5 class="panel-title-register">
                                                Email Address</h4>
                                            </div>
                                            <div class="panel-body">
                                                <asp:Panel ID="pnlAlertEmail" runat="server" Visible="false">
                                                    <div class="alert alert-danger">A valid email address is required</div>
                                                </asp:Panel>
                                                <div>
                                                    <asp:TextBox ID="Email" runat="server" Width="100%" class="small-indent form-control " />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <%-- DOB--%>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h5 class="panel-title-register">
                                                Date of Birth</h4>
                                            </div>
                                            <div class="panel-body">
                                                <asp:Panel ID="pnlAlertDOB" runat="server" Visible="false">
                                                    <div class="alert alert-danger">
                                                        Date of birth is incorrect.
                                                    </div>
                                                </asp:Panel>
                                                <div class="center">
                                                    <table>
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
                                                                <asp:TextBox ID="tbMonth" runat="server" Width="57px" CssClass="form-control" onkeyup="autoTab(this,'2','ContentPlaceHolder1_CreateUserWizard1_CreateUserStepContainer_tbDay');" /></td>
                                                            <td><span class="text-date-slash-big">/</span></td>
                                                            <td>
                                                                <asp:TextBox ID="tbDay" runat="server" Width="57px" CssClass="form-control" onkeyup="autoTab(this,'2','ContentPlaceHolder1_CreateUserWizard1_CreateUserStepContainer_tbYear');" /></td>
                                                            <td><span class="text-date-slash-big">/</span></td>
                                                            <td>
                                                                <asp:TextBox ID="tbYear" runat="server" Width="65px" CssClass="small-indent form-control" onkeyup="autoTab(this,'4','ContentPlaceHolder1_CreateUserWizard1_CreateUserStepContainer_Answer');" /></td>
                                                            <td></td>
                                                        </tr>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <%--Security Question--%>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h5 class="panel-title-register">
                                                Security Question</h4>
                                            </div>
                                            <div class="panel-body">
                                                <asp:Panel ID="pnlAlertSecurityQuestion" runat="server" Visible="false">
                                                    <div class="alert alert-danger">
                                                        Security answer is required
                                                    </div>
                                                </asp:Panel>
                                                <div class="margin-bottom10">
                                                    <span>Security Question</span>
                                                    <asp:DropDownList ID="ddlChallengeQuestions" runat="server" Width="100%" DataTextField="Question" DataValueField="QuestionId" />
                                                    <asp:TextBox ID="Question" runat="server" Visible="false" Text="This is used for the create user control. It is needed." Width="250px" />
                                                </div>
                                                <div>
                                                    <span>Security Answer</span>
                                                    <asp:TextBox ID="Answer" runat="server" Width="100%" class="space form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title-register">Your Password</h4>
                                            </div>
                                            <div class="panel-body">
                                                <asp:Panel ID="pnlAlertPassword" runat="server" Visible="false">
                                                    <div class="alert alert-danger">
                                                        Both passwords must match.    
                                                    </div>
                                                </asp:Panel>

                                                <%--Password Entry--%>
                                                <div class="margin-bottom10">
                                                    <asp:Label ID="lblEnterPassword" runat="server" Text="Enter your password" />
                                                    <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" Width="100%" />
                                                </div>
                                                <div>
                                                    <asp:Label ID="lblRetypePassword" runat="server" Text="Re-type Password" />
                                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" CssClass="form-control " Width="100%" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </ContentTemplate>
                            <CustomNavigationTemplate>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12 margin-bottom20">
                                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-action-celadon" OnClick="btnCancel_Click" />
                                        <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" CssClass="btn-action-celadon margin-top20" OnClientClick="ga('send', 'event', 'button', 'action', 'register-next');" />
                                    </div>
                                </div>
                            </CustomNavigationTemplate>
                        </asp:CreateUserWizardStep>

                        <asp:CompleteWizardStep ID="CreateUserWizardCompleteStep" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h5 class="panel-title-register">Success</h5>
                                            </div>
                                            <div class="panel-body">
                                                <div class="alert alert-success">
                                                    You are now signed up.
                                                </div>
                                            </div>
                                        </div>
                                        <asp:Button ID="hlLogin" runat="server" CssClass="btn-action-celadon" Text="Click to Login" OnClick="hlLogin_Click" OnClientClick="ga('send', 'event', 'button', 'action', 'register-complete');" />
                                    </div>
                                </div>
                            </ContentTemplate>
                        </asp:CompleteWizardStep>

                    </WizardSteps>
                </asp:CreateUserWizard>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>

