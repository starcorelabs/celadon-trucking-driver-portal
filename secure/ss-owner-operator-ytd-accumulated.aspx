<%@ Page Title="OO Settlement YTD" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ss-owner-operator-ytd-accumulated.aspx.vb" Inherits="secure_ss_owner_operator_ytd_accumulated" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="label-color">Owner Operator <%=ddlYear.SelectedValue%> YTD settlement totals as of
            <asp:Label ID="lblAsOfDate" runat="server" /></h3>
            <hr />
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <div class="no-print">
                Click   
            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true">
                <asp:ListItem Text="2014" Value="2014" Selected="true" />
                <asp:ListItem Text="2013" Value="2013" />
            </asp:DropDownList>
                to change the current year. 
            </div>

            <asp:Panel ID="pnlRevenueAccessorials" runat="server">
                <h4>Revenue Accessorials</h4>
                <asp:GridView ID="gvRevenueAccessorials" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlReimbursements" runat="server">
                <h4>Reimbursements</h4>
                <asp:GridView ID="gvReimbursements" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <asp:Panel ID="pnlRecurringDeductions" runat="server">
                <h4>Recurring Deductions</h4>
                <asp:GridView ID="gvRecurringDeductions" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <asp:Panel ID="pnlChargeBacks" runat="server">
                <h4>Charge Backs</h4>
                <asp:GridView ID="gvChargeBacks" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <asp:Panel ID="pnlAdjustments" runat="server">
                <h4>Adjustments</h4>
                <asp:GridView ID="gvAdjustments" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <asp:Panel ID="pnlAdvances" runat="server">
                <h4>Advances</h4>
                <asp:GridView ID="gvAdvances" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors" Width="100%">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

