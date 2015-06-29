<%@ Page Title="CD Settlement YTD" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ss-company-driver-ytd-accumulated.aspx.vb" Inherits="secure_ss_company_driver_ytd_accumulated" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <h2 class="label-color">Company Driver YTD <%=ddlYear.SelectedValue%></h2>

            <h3>Settlement totals as of
                <asp:Label ID="lblAsOfDate" runat="server" /></h3>
            <p class="no-print">
                Click   
            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true">
                <asp:ListItem Text="2014" Value="2014" Selected="true" />
                <asp:ListItem Text="2013" Value="2013" />
            </asp:DropDownList>
                to change the current year.
            </p>

            <div id="summaryTable" class="table-responsive">
                <asp:GridView ID="gvAccumulated" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="text-center">
                <asp:HyperLink ID="btnBackToSettlementList" runat="server" Text="Back to Settlement List" NavigateUrl="~/secure/ss-company-driver.aspx" CssClass="btn-skin-default" Style="text-decoration: none; margin-bottom: 20px;" OnClientClick="ga('send', 'event', 'link', 'navigation', 'no-settlement-data-back-to-settlement-list');" />
            </div>
        </div>
    </div>
</asp:Content>

