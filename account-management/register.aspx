<%@ Page Title="Register" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="public_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function next(currentControl, maxLength, nextControl) {
            if (currentControl.value.length >= maxLength)
                document.getElementById(nextControl).focus();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="table-container">

        <div class="col-md-9 col-sm-9">
            <div class="block">
                <h3 class="label-color">New Driver Account Registration</h3>

                <asp:Label ID="lblUserName" runat="server" AssociatedControlID="txtUserName" CssClass="left-side">Driver ID</asp:Label>
                <asp:TextBox ID="txtUserName" runat="server" class="form-control" CssClass="input-box"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="Driver ID is required.">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvDriverID" runat="server" ControlToValidate="txtUserName" Type="Integer" ErrorMessage="Invalid Driver ID" Operator="DataTypeCheck" Display="Dynamic" />
            </div>

            <div class="indent">
                <asp:Button ID="btnNext" runat="server" Text="Next" Width="80" CssClass="btn btn-round-wide" />
            </div>

            <div class="block">
                <asp:Panel ID="pnlAlreadyRegesteredError" runat="server" Visible="false">
                    <div class="alert alert-danger">Alert: Already Registered!</div>
                    <div>Sorry for your inconvenience.</div>
                    <div class="space">
                        Your Driver ID is already registered. If you feel this is incorrect please contact the driver payroll department at your earliest convenience.
                        <!--Microdata-->
                        <div itemscope="" itemtype="http://schema.org/LocalBusiness">
                            <h1 itemprop="name">Celadon Question Line</h1>
                            Phone: <span itemprop="telephone"><a href="tel:+18007583252">1-800-758-3252</a></span>
                        </div>
                    </div>
                    <div class="space">Did you forget you password?</div>
                    <div class="space">
                        <asp:Button ID="Button1" runat="server" Text="Forgot password" Width="80" CssClass="btn btn-round-wide" />
                    </div>
                </asp:Panel>
            </div>

            <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Style="margin-top: 20px;" Visible="False">
                <WizardSteps>
                    <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                        <ContentTemplate>

                            <asp:Label ID="lblUserName" runat="server" />
                            <asp:TextBox ID="UserName" runat="server" Visible="false" CssClass="form-control" />

                            <table class="registration">

                                <tr>
                                    <td>
                                        <!--Keep this empty cell for table stability-->
                                     </td>
                                    <td>
                                        <table>
                                            <tr>
                                            </tr>

                                            <tr>
                                                <td><p>Month</p>
	<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tbMonth" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" CssClass="fail" ValidationGroup="CreateUserWizard1">*</asp:CompareValidator></td>
                                                <td><p>Day</p> 
	<asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="tbDay" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" CssClass="fail" ValidationGroup="CreateUserWizard1">*</asp:CompareValidator></td>
                                                <td><p>Year</p>
	<asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="tbYear" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" CssClass="fail" ValidationGroup="CreateUserWizard1">*</asp:CompareValidator></td>

                                            </tr>
                                </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lblDOB" runat="server">Date of Birth</asp:Label></td>
                                    <td>
                                        <table>
                                            <tr>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="tbMonth" runat="server" Width="57px" CssClass="form-control" onkeyup="next(this,'2','ContentPlaceHolder1_CreateUserWizard1_CreateUserStepContainer_tbDay');" />


                                                </td>
                                                <td>
                                                    <asp:TextBox ID="tbDay" runat="server" Width="57px" CssClass="form-control" onkeyup="next(this,'2','ContentPlaceHolder1_CreateUserWizard1_CreateUserStepContainer_tbYear');" />

                                                </td>
                                                <td>
                                                    <asp:TextBox ID="tbYear" runat="server" Width="65px" CssClass="small-indent form-control" onkeyup="next(this,'4','ContentPlaceHolder1_CreateUserWizard1_CreateUserStepContainer_Password');" />

                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="vertical-align">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password</asp:Label>
                                       
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1" CssClass="fail">*</asp:RequiredFieldValidator>
                                        <td class="vertical-align">
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" class="form-control" />

                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Re-type Password </asp:Label>
                                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1" CssClass="fail">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" class="form-control " />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="Email" ErrorMessage="Please enter a email address" Style="color: red;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RequiredFieldValidator></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="Email" runat="server" class="small-indent form-control " /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question" CssClass="margin-top15">Security Question</asp:Label></td>
                                    <td>
                                        <asp:DropDownList ID="ddlChallengeQuestions" runat="server" Width="250px" DataTextField="Question" DataValueField="QuestionId" />
                                        <asp:TextBox ID="Question" runat="server" Visible="false" Text="This is used for the create user control. It is needed." Width="250px" /></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer" CssClass="">Security Answer</asp:Label>
                                        <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1" CssClass="fail">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="margin-top20">
                                        <asp:TextBox ID="Answer" runat="server" Width="250px" class="space form-control" />

                                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1" CssClass="fail"></asp:CompareValidator>
                                        <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False" />
                                    </td>
                                </tr>
                            </table>
                        </ContentTemplate>
                        <CustomNavigationTemplate>
                            <div class="center-form">
                                <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Create User" ValidationGroup="CreateUserWizard1" CssClass="btn-normal btn-success margin-top20" />
                            </div>
                        </CustomNavigationTemplate>
                    </asp:CreateUserWizardStep>
                    <asp:CompleteWizardStep ID="CreateUserWizardCompleteStep" runat="server">
                        <ContentTemplate>
                            <span>You are now signed up.</span>
                            <asp:Button ID="hlLogin" runat="server" CssClass="btn-normal btn-success" Text="Click to Login" NavigateUrl="~/Login.aspx" />
                        </ContentTemplate>
                    </asp:CompleteWizardStep>
                </WizardSteps>
            </asp:CreateUserWizard>
            <asp:Label ID="lblCustomErrorMessage" runat="server" Style="color: red;" />
        </div>
    </div>
</asp:Content>

