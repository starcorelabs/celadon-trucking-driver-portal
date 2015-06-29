<%@ Page Title="CD Settlements" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ss-company-driver.aspx.vb" Inherits="secure_ss_company_driver" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/master-style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="row">
<div class="col-md-8 col-md-offset-2 margin-bottom30">


    <h2 class="label-color">Company Driver <%=ddlYear.SelectedValue%> Settlements</h2>
    <p class="no-print">
        Click   
            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true">
                <asp:ListItem Text="2014" Value="2014" Selected="true" />
                <asp:ListItem Text="2013" Value="2013" />
            </asp:DropDownList>
        to change the current year. 
    </p>
    <div>Click on a row to view the weekly settlement.</div>
    <div id="settlements" class="table-responsive">
        <asp:GridView ID="gvSettlementSummaries" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound"
            OnSelectedIndexChanged="OnSelectedIndexChanged" Width="100%" CssClass="table table-striped table-shim table-celadon-colors ">
            <Columns>
                <asp:BoundField HeaderText="Date" DataField="CheckDate"  />
                <asp:BoundField HeaderText="Net Amount" DataField="NetAmt" DataFormatString="{0:C}" ItemStyle-CssClass="text-click-here" />
                <asp:BoundField HeaderText="Type" DataField="CheckType" />
            </Columns>
        </asp:GridView>
    </div>

    </div>
</div>
</asp:Content>
