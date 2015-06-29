<%@ Page Title="Contact Us" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact-us.aspx.vb" Inherits="public_contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
<div class="col-md-8 col-md-offset-2 margin-bottom30">
    <h3 class="label-color">Contact Us</h3>
    <hr />
    <asp:Panel ID="pnlContactSuccess" runat="server" CssClass="alert alert-success" Visible="false">
        <asp:Label ID="lblMessage" runat="server" Text="Thank you for contacting Celadon!" />
    </asp:Panel>
    <asp:Label runat="server" ID="lblMainNumber" SkinID="lblMainNumber">Main Number  <a href="tel:+18002352366" onclick="ga('send', 'event', 'button', 'action', 'contact-us-call-celadon');" >1-800-235-2366</a></asp:Label><br />
    <asp:Label runat="server" ID="lblDriverRelations" SkinID="lblDriverRelations">Driver Relations <a href="tel:+18442352366" onclick="ga('send', 'event', 'button', 'action', 'contact-us-call-relations');" >1-844-235-2366</a></asp:Label>
    <h4 class="label-color">Have a question or comment?</h4>

    <div>
        <asp:DropDownList ID="ddlRegarding" runat="server" BorderColor="Silver" BorderStyle="Solid" Width="209px" CssClass="form-control margin-bottom20">
            <asp:ListItem Text="Select a department"></asp:ListItem>
            <asp:ListItem Text="Website"></asp:ListItem>
            <asp:ListItem Text="Payroll"></asp:ListItem>
            <%--<asp:ListItem Text="Relations"></asp:ListItem>
                <asp:ListItem Text="Safety"></asp:ListItem>
                <asp:ListItem Text="Human Resources"></asp:ListItem>--%>
        </asp:DropDownList>
    </div>
    <asp:Panel ID="pnlPleaseSelectDepartment" runat="server" Visible="false" CssClass="alert alert-danger">
        <span>Please select a department.</span>
    </asp:Panel>
    <asp:TextBox ID="txtQuestionComment" runat="server" Rows="15" TextMode="MultiLine" Width="300px" CssClass="form-control" />
    <div>
        <asp:RequiredFieldValidator ID="rfvQuestionComment" runat="server" ControlToValidate="txtQuestionComment" Style="color: red;">Please enter a question or comment</asp:RequiredFieldValidator>
    </div>
    <div>
        <p>Your Email Address</p>
        <asp:TextBox ID="txtEmail" runat="server" Width="300px" CssClass="form-control" />
    </div>
    <div>
        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" Display="Dynamic" CssClass="validation-fail">Please enter a valid email address</asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" Style="color: red;" Display="Dynamic">Please enter your email address</asp:RequiredFieldValidator>
    </div>
    <div class="margin-bottom40 margin-top20">
        <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'contact-celadon');" />
    </div>
    </div>
</div>
</asp:Content>
