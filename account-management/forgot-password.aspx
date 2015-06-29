<%@ Page Title="Forgot Password" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forgot-password.aspx.vb" Inherits="public_forgot_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <label>Forgot Password</label>
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" DisplaySideBar="False">
        <FinishNavigationTemplate>
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finish" />
        </FinishNavigationTemplate>
        <HeaderTemplate>
        </HeaderTemplate>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
        </StartNavigationTemplate>
        <StepNavigationTemplate>
        </StepNavigationTemplate>
        <WizardSteps>
            <asp:WizardStep ID="WizardStepDriverID" runat="server" Title="Identification" AllowReturn="False" StepType="Start">
                <span>Driver ID</span><asp:TextBox ID="tbDriverID" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="cvDriverID" runat="server" ControlToValidate="tbDriverID" Type="Integer" Operator="DataTypeCheck" ErrorMessage="Incorrect Driver ID" />
                <asp:RequiredFieldValidator ID="rfvDriverID" runat="server" ControlToValidate="tbDriverID" ErrorMessage="Driver ID is required" />
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStepChallengeQuestion" runat="server" Title="Challenge Question" StepType="Step">
                <div>Please answer your challenge question</div>
                <div>You have <b>5</b> chances to answer correctly</div>
                <div>untill the next set of questions</div>
                <div>
                    <asp:Label ID="lblChallengeQuestion" runat="server" Text="Users challenge questions" />
                </div>
                <div>
                    <asp:TextBox ID="tblChallengeAnswer" runat="server" TextMode="MultiLine" AutoCompleteType="None" />
                </div>
                <div>
                    <asp:Label ID="lblChallengeAnswerFail" runat="server" Text="Your answer is incorrect. Please try again." Visible="false" />
                </div>
                <div>
                    <asp:Button ID="btnChallengeQuestionNext" runat="server" CommandName="MoveNext" Text="Next" />
                </div>
            </asp:WizardStep>

            <asp:WizardStep ID="WizardStepAdditionalQuestions" runat="server" Title="Additional Questions" StepType="Step">
                <span>What type of driver are you currently?</span>
                <asp:RadioButtonList ID="rblDriverType" runat="server">
                    <asp:ListItem>Company Driver</asp:ListItem>
                    <asp:ListItem>Jaguar Driver</asp:ListItem>
                    <asp:ListItem>Owner Operator</asp:ListItem>
                    <asp:ListItem>Canadian Driver</asp:ListItem>
                </asp:RadioButtonList>
                <div>
                    <div>What is your date of birth YYYYMMDD</div>
                    <div>Example: 19721031</div>
                </div>
                <div>
                    <asp:TextBox ID="tbDateOfBirth" runat="server" />
                </div>
                <div>
                    <asp:RegularExpressionValidator ID="revtbDateOfBirth" ControlToValidate="tbDateOfBirth"
                        ValidationExpression="^(?:(?:(?:(?:[13579][26]|[2468][048])00)|(?:[0-9]{2}(?:(?:[13579][26])|(?:[2468][048]|0[48]))))(?:(?:(?:09|04|06|11)(?:0[1-9]|1[0-9]|2[0-9]|30))|(?:(?:01|03|05|07|08|10|12)(?:0[1-9]|1[0-9]|2[0-9]|3[01]))|(?:02(?:0[1-9]|1[0-9]|2[0-9]))))|(?:[0-9]{4}(?:(?:(?:09|04|06|11)(?:0[1-9]|1[0-9]|2[0-9]|30))|(?:(?:01|03|05|07|08|10|12)(?:0[1-9]|1[0-9]|2[0-9]|3[01]))|(?:02(?:[01][0-9]|2[0-8]))))$"
                        runat="server" ErrorMessage="Invalid Date format. Valid Date Format YYYYMMDD">
                    </asp:RegularExpressionValidator>
                </div>
                <div>
                    <asp:Button ID="btnAdditionalQuestionsNext" runat="server" CommandName="MoveNext" Text="Next" />
                </div>
                <div>
                    <asp:RequiredFieldValidator runat="server" ID="rfvDriverType" ControlToValidate="rblDriverType" ErrorMessage="A driver type is required." />
                    <asp:RequiredFieldValidator ID="rfvDateOfBirth" runat="server" ControlToValidate="tbDateOfBirth" ErrorMessage="A date of birth is required." />
                </div>
                <div>
                    <asp:Label ID="lblAdditionalChallengeAnswerFail" runat="server" Text="Your one or more of your answers are incorrect. Please try again." Visible="false" />
                </div>
            </asp:WizardStep>

            <asp:WizardStep ID="WizardStepChangePassword" runat="server" Title="Change Password" StepType="Finish">
                <div>New Password</div>
                <div>
                    <asp:TextBox ID="tbPassword1" runat="server" AutoCompleteType="None" TextMode="password" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvPassword1" ControlToValidate="tbPassword1" ErrorMessage="Please enter a password" />
                </div>
                <div>Re-Type Password</div>
                <div>
                    <asp:TextBox ID="tbPassword2" runat="server" AutoCompleteType="None" TextMode="password" />
                    <asp:RequiredFieldValidator runat="server" ID="rfvPassword2" ControlToValidate="tbPassword2" ErrorMessage="Please re-type your password" />
                </div>
                <div>
                    <asp:Label ID="lblPasswordsNonMatch" runat="server" Text="Password fields must match." Visible="false" />
                </div>
            </asp:WizardStep>

            <asp:WizardStep ID="WizardStepPasswordChanged" runat="server" Title="Password Changed" StepType="Complete">
                <div>
                    <div>Your password has been changed.</div>
                    <div>
                        <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/public/login.aspx">Click to login using your new password</asp:HyperLink>
                    </div>
                </div>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
