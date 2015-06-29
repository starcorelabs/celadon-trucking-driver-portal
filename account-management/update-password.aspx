<%@ Page Title="Update Password" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="update-password.aspx.vb" Inherits="public_update_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" />
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div style="width: 350px; margin: 0 auto; font-family: Arial;">
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Width="100%" DisplaySideBar="False">
                <FinishNavigationTemplate>
                    <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" Width="130px" OnClientClick="ga('send', 'event', 'button', 'action', 'update-password-finish');" />
                </FinishNavigationTemplate>
                <HeaderTemplate>
                    <table style="text-align: center; width: 100%;">
                        <tr>
                            <td>
                                <img id="imgCeladonLogo" src="images/celadonlogo.gif" alt="Home" runat="server" title="Celadon Logo" width="130" height="55" />
                            </td>

                            <td>
                                <h2>Driver Portal</h2>
                            </td>
                        </tr>
                    </table>
                    <div style="margin-top: 10px; text-align: center;">Update your password and account information.</div>
                </HeaderTemplate>
                <StartNavigationTemplate>
                    <div style="text-align: center; margin-top: 15px;">
                        <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" Width="120px" OnClientClick="ga('send', 'event', 'button', 'action', 'update-password-next');" />
                    </div>
                </StartNavigationTemplate>
                <StepNavigationTemplate>
                </StepNavigationTemplate>
                <WizardSteps>
                    <asp:WizardStep ID="WizardStepDriverID" runat="server" Title="Identification" AllowReturn="False" StepType="Start">
                        <div style="margin-top: 20px; text-align: center;">
                            <span style="margin-right: 10px;">Driver ID:</span><asp:TextBox ID="tbDriverID" runat="server" AutoCompleteType="None"></asp:TextBox>
                        </div>
                        <div style="text-align: center;">
                            <asp:CompareValidator ID="cvDriverID" runat="server" ControlToValidate="tbDriverID" Type="Integer" Operator="DataTypeCheck" ErrorMessage="Incorrect Driver ID" Display="Dynamic" />
                            <asp:RequiredFieldValidator ID="rfvDriverID" runat="server" ControlToValidate="tbDriverID" ErrorMessage="Driver ID is required" Display="Dynamic" />
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStepPreviousChallengeQuestion" runat="server" Title="Challenge Question" StepType="Step">
                        <div style="margin-top: 15px; text-align: center;">Please answer your challenge question.</div>
                        <div style="text-align: center;">You have <b>5</b> chances to answer correctly</div>
                        <div style="text-align: center;">untill the next set of questions</div>
                        <div style="margin-top: 10px; margin-bottom: 10px; text-align: center;">
                            <asp:Label ID="lblOldChallengeQuestion" runat="server" Text="Users challenge questions" />
                        </div>
                        <div>
                            <asp:TextBox ID="tbOldChallengeAnswer" runat="server" TextMode="MultiLine" Width="330px" AutoCompleteType="None" />
                        </div>
                        <div style="color: red; text-align: center;">
                            <asp:Label ID="lblChallengeAnswerFail" runat="server" Text="Your answer is incorrect. Please try again." Visible="false" />
                        </div>
                        <div style="text-align: right">
                            <asp:Button ID="btnChallengeQuestionNext" runat="server" CommandName="MoveNext" Text="Next" OnClientClick="ga('send', 'event', 'button', 'action', 'update-password-challenge-question-next');" />
                        </div>
                        <div style="margin-top: 30px; text-align: center;">
                            Can't remember the answer?
                        </div>
                        <div style="text-align: center; margin-top: 10px;">
                            <asp:Button ID="btnAdditionalQuestions" runat="server" Text="Click to get more questions" Style="margin-left: 10px;" OnClientClick="ga('send', 'event', 'button', 'action', 'update-password-get-more-questions');" />
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStepAdditionalQuestions" runat="server" Title="Additional Questions" StepType="Step">
                        <div style="margin-top: 15px; text-align: center;">
                            What type of driver are you currently?
                            </div>
                        <div style="margin-left: 110px;">
                        <asp:RadioButtonList ID="rblDriverType" runat="server">
                            <asp:ListItem>Company Driver</asp:ListItem>
                            <asp:ListItem>Jaguar Driver</asp:ListItem>
                            <asp:ListItem>Owner Operator</asp:ListItem>
                            <asp:ListItem>Canadian Driver</asp:ListItem>
                        </asp:RadioButtonList>
                            </div>
                            <div style="margin-top: 20px; text-align: center;">
                                <div>What is your date of birth YYYYMMDD</div>
                                <div>Example: 19660108</div>
                            </div>
                            <div style="margin-top: 5px; text-align: center;">
                                <asp:TextBox ID="tbDateOfBirth" runat="server" Width="75px" type="number" />
                            </div>
                            <div style="margin-top: 5px; text-align: center;">
                                <asp:RegularExpressionValidator ID="revtbDateOfBirth" ControlToValidate="tbDateOfBirth"
                                    ValidationExpression="^(?:(?:(?:(?:[13579][26]|[2468][048])00)|(?:[0-9]{2}(?:(?:[13579][26])|(?:[2468][048]|0[48]))))(?:(?:(?:09|04|06|11)(?:0[1-9]|1[0-9]|2[0-9]|30))|(?:(?:01|03|05|07|08|10|12)(?:0[1-9]|1[0-9]|2[0-9]|3[01]))|(?:02(?:0[1-9]|1[0-9]|2[0-9]))))|(?:[0-9]{4}(?:(?:(?:09|04|06|11)(?:0[1-9]|1[0-9]|2[0-9]|30))|(?:(?:01|03|05|07|08|10|12)(?:0[1-9]|1[0-9]|2[0-9]|3[01]))|(?:02(?:[01][0-9]|2[0-8]))))$"
                                    runat="server" ErrorMessage="Invalid Date format. Valid Date Format YYYYMMDD">
                                </asp:RegularExpressionValidator>
                            </div>
                        
                        <div style="text-align: right">
                            <asp:Button ID="btnAdditionalQuestionsNext" runat="server" CommandName="MoveNext" Text="Next" OnClientClick="ga('send', 'event', 'button', 'action', 'update-password-additional-questions-next');" />
                        </div>
                        <div style="text-align: center;">
                            <asp:RequiredFieldValidator runat="server" ID="rfvDriverType" ControlToValidate="rblDriverType" ErrorMessage="A driver type is required." />
                            <asp:RequiredFieldValidator ID="rfvDateOfBirth" runat="server" ControlToValidate="tbDateOfBirth" ErrorMessage="A date of birth is required." />
                        </div>
                        <div style="text-align: center; color: red;">
                            <asp:Label ID="lblAdditionalChallengeAnswerFail" runat="server" Text="Your one or more of your answers are incorrect. Please try again." Visible="false" />
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStepPickANewChallengeQuestion" runat="server" Title="Change Security Question" StepType="Step">
                        <div>Pick a new challenge question</div>
                        <div>
                            <asp:DropDownList ID="ddlChallengeQuestions" runat="server" Width="320px" DataTextField="Question" DataValueField="QuestionId" />
                        </div>
                        <div>Your answer to the new challenge question</div>
                        <div>
                            <asp:TextBox ID="tbChallengeAnswer" runat="server" Width="320px" />
                        </div>
                        <div style="text-align: right">
                            <asp:Button ID="btnChallenQuestionsNext" runat="server" CommandName="MoveNext" Text="Next" OnClientClick="ga('send', 'event', 'button', 'action', 'update-password-challenge-questions-next');"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator runat="server" ID="rfvChallengeAnswer" ControlToValidate="tbChallengeAnswer" ErrorMessage="Please enter an answer to the challenge question." />
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStepChangePassword" runat="server" Title="Change Password" StepType="Finish">
                        <div>New Password</div>
                        <div>
                            <asp:TextBox ID="tbPassword1" runat="server" Width="300px" TextMode="Password" />
                            <div>
                                <asp:RequiredFieldValidator runat="server" ID="rfvPassword1" ControlToValidate="tbPassword1" ErrorMessage="Please enter a password" />
                            </div>
                        </div>
                        <div>Re-Type Password</div>
                        <div>
                            <asp:TextBox ID="tbPassword2" runat="server" Width="300px" TextMode="Password" />
                            <div>
                                <asp:RequiredFieldValidator runat="server" ID="rfvPassword2" ControlToValidate="tbPassword2" ErrorMessage="Please re-type your password" />
                            </div>
                        </div>
                        <div>
                            <asp:Label ID="lblPasswordsNonMatch" runat="server" Text="Password fields must match." Visible="false" Style="color: red;" />
                        </div>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStepPasswordChanged" runat="server" Title="Password Changed" StepType="Complete">
                        <table style="text-align: left">
                            <tr>
                                <td>
                                    <img id="imgCeladonLogo" src="images/celadonlogo.gif" alt="Home" runat="server" title="Celadon Logo" />&nbsp;</img>&nbsp;</img>&nbsp;</img>&nbsp;</img></td>
                                <td style="text-align: center; width: 220px;"><span style="font-size: x-large; font-weight: 400;">Driver Portal</span> </td>
                            </tr>
                        </table>
                        <div style="text-align: center;">
                            <div style="margin-bottom: 10px; margin-top: 20px;">Your account has been updated.</div>
                            <div>
                                <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="login.aspx">Click to login using your new password</asp:HyperLink>
                            </div>
                        </div>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </div>
</asp:Content>

