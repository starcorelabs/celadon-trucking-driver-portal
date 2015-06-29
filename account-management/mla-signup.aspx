<%@ Page Title="MLA Signup" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="mla-signup.aspx.vb" Inherits="account_management_mla_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%--used for the mobile number mask--%>
    <script type="text/javascript" src="../js/jquery.maskedinput.js"></script>
    <script type='text/javascript'>
        $(function () {
            // Define your mask (using 9 to denote any digit)
            $('#tbPhoneMobile').mask('(999) 999-9999');
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
<div class="col-md-8 col-md-offset-2 margin-bottom30">

    <h2 class="label-color">Mobile Load Assignment - Sign Up</h2>
    <hr />

    <p>Welcome to the Mobile Load Assignment (MLA). This program allows you to receive load assignments when you are away from the truck using your smart phone. You will receive text messages and/or email to your smart phone.</p>
    <p>To enroll you will need to fill your information below. Your smart phone needs to have a plan that includes texting and data. After you agree to the disclaimer of warranty and submit you will receive messages when a load is assigned to you.</p>
    <p>You will only receive messages from Celadon when the truck is stationary. You may only contact Celadon by phone or Qualcomm or browse this website when the truck is stationary. If you have additional questions please contact your Driver Manager.</p>

    <%--SMS Section--%>
    <h3 class="label-color">Text Messages</h3>
    <span style="display: inline-block; width: 150px;">Mobile Number</span>
    <span style="display: inline-block; margin-bottom: 10px;">
        <asp:TextBox ID="tbPhoneMobile" ClientIDMode="Static" runat="server" Width="145" MaxLength="10" ToolTip="Enter your 10 digit number" CssClass="form-control  error" />
    </span>
    <div>
        <span style="display: inline-block; vertical-align: middle; width: 150px;">Mobile Service Provider</span>
        <span style="display: inline-block;">
            <asp:DropDownList ID="ddlProvider" runat="server" Width="145" DataTextField="Description" DataValueField="ID" CssClass="form-control" />
        </span>
    </div>
    <div>
        <asp:Label ID="lblSelectProvider" runat="server" Text="Please select a provider" Visible="false" CssClass="" />
    </div>

    <%--Email Section--%>
    <h3 class="label-color">Email Messages</h3>
    <span style="display: inline-block; width: 150px;">Email Address</span>
    <span style="display: inline-block;">
        <asp:TextBox ID="tbLoadOffersEmail" runat="server" Width="230" ToolTip="Enter your email address" CssClass="form-control" />
    </span>
    <p>
        <asp:RegularExpressionValidator ID="emailValidator" runat="server" Display="Dynamic" ControlToValidate="tbLoadOffersEmail" ErrorMessage="Please enter a valid email" CssClass="text-error-validation" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <hr />


    <%--Disclaimer Section--%>
    <h3 class="label-color">Disclaimer of Warranty</h3>
    <p>This application is licensed “as-is,” “with all faults,” and “as available.”  Celadon makes no representations or warranties of any kind, express or implied, about the completeness, accuracy, reliability, suitability or availability with respect to the information, products, services, or related graphics contained in or accessed through the application for any purpose. To the fullest extent permissible under applicable law, we disclaim all warranties, express or implied, including but not limited to implied warranties of merchantability, fitness for a particular purpose, title, and non-infringement. Any reliance you place on such information is therefore strictly at your own risk, and by using this application you expressly assume all such risk. </p>
    <p>If you subscribe to the mobile load assignment service, standard text messaging (also referred to as SMS messaging) and/or data charge fees from your wireless telecommunications provider may apply. Please check with your wireless telecommunications provider before subscribing to the Service.</p>

    <asp:CheckBox ID="chkbxIAgree" runat="server" Text="I agree to the terms stated in the above Disclaimer of Warranty" Style="font-weight: bold;" CssClass="chkbox-mla" />
    <p>
        <asp:Label ID="lblYouMustAgree" runat="server" Text="You must agree to the terms above to participate in Mobile Load Assignment (MLA) program." Visible="false" CssClass="validation-error-text" />
    </p>

    <asp:Button ID="btnUpdateUserProfile" runat="server" Value="Submit" Text="Submit" OnClick="btnUpdateUserProfile_Click" CausesValidation="True" CssClass="btn-action-celadon" />
    <asp:SqlDataSource ID="SqlDataSourceWirelessServiceProviders" runat="server" ConnectionString="<%$ ConnectionStrings:ExternalWebsites %>" SelectCommand="SELECT TOP 1000 [ID]
                        ,[Description],[SortOrder],[Active],[Domain] FROM [ExternalWebsites].[dbo].[WirelessServiceProviders] WHERE [Active] = 1 ORDER BY COALESCE([SortOrder], 9999999) ASC"></asp:SqlDataSource>

    </div>
</div>
</asp:Content>

