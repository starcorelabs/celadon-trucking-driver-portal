<%@ Page Title="OO Settlement Summary" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ss-owner-operator-summary.aspx.vb" Inherits="secure_ss_owner_operator_summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/master-style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-10 col-md-offset-1 margin-bottom30">
            <h2 class="label-color">
                <asp:Label ID="lblSettlementDate" runat="server" />
                <label class="hidden-xs">Owner Operator</label>
                Settlement 
            </h2>
            <hr />
             <div>
                <asp:Button ID="btnEmailSettlement" runat="server" Text="Send to Email" CssClass="btn-skin-default" OnClientClick="ga('send', 'event', 'button', 'navigation', 'email-oo-settlement');" />
                <asp:Button ID="btnFaxSettlement" runat="server" Text="Send to Fax" CssClass="btn-skin-default" OnClientClick="ga('send', 'event', 'button', 'navigation', 'fax-oo-settlement');" />
            </div>

            <asp:Panel ID="pnlTripSummary" runat="server">
                <h4>Trip Summary</h4>
                <asp:GridView ID="gvTripSummary" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Trip Date" DataField="TripDate" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField HeaderText="Order Number" DataField="OrderNumber" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Origin City" DataField="OriginCity" />
                        <asp:BoundField HeaderText="Origin State" DataField="OriginStateCode" />
                        <asp:BoundField HeaderText="Destination City" DataField="DestinationCity" />
                        <asp:BoundField HeaderText="Destination State" DataField="DestinationStateCode" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlRevenueSummary" runat="server">
                <h4>Revenue Summary</h4>
                <asp:GridView ID="gvRevenueSummary" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Weekly" DataField="Weekly" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="YTD" DataField="YTD" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlRevenueAccessorials" runat="server">
                <h4>Revenue Detail</h4>
                <asp:GridView ID="gvRevenueAccessorials" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Transaction Date" DataField="Date" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField HeaderText="Order Number" DataField="OrderNumber" />
                        <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-CssClass="text-grid-small" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Reference" DataField="Reference" />
                        <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
                        <asp:BoundField HeaderText="Adjusted Rate" DataField="AdjustedRate" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlReimbursements" runat="server">
                <h4>Reimbursements</h4>
                <asp:GridView ID="gvReimbursements" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Transaction Date" DataField="Date" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField HeaderText="Order Number" DataField="OrderNumber" />
                        <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-CssClass="text-grid-small" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Reference" DataField="Reference" />
                        <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
                        <asp:BoundField HeaderText="Contact Rate" DataField="ContactRate" />
                        <asp:BoundField HeaderText="Adjusted Rate" DataField="AdjustedRate" />
                        <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlRecurringDeductions" runat="server">
                <h4>Weekly Payments / Recurring Deductions</h4>
                <asp:GridView ID="gvRecurringDeductions" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Transaction Date" DataField="TransactionDate" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-CssClass="text-grid-small" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Service Charge" DataField="ServiceCharge" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Weekly Payment" DataField="Payment" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Current Contribution" DataField="DriverContribution" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlChargeBacks" runat="server">
                <h4>Charge Backs</h4>
                <asp:GridView ID="gvChargebacks" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Transaction Date" DataField="TransactionDate" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-CssClass="text-grid-small" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Driver Contribution" DataField="DriverContribution" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Service Charge" DataField="ServiceCharge" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Payment" DataField="Payment" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlAdjustments" runat="server">
                <h4>Adjustments</h4>
                <asp:GridView ID="gvAdjustments" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Transaction Date" DataField="TransactionDate" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-CssClass="text-grid-small" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Driver Contribution" DataField="DriverContribution" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Original Balance" DataField="OriginalBalance" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Service Charge" DataField="ServiceCharge" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Payment" DataField="Payment" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlAdvances" runat="server">
                <h4>Advances</h4>
                <asp:GridView ID="gvAdvances" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Transaction Date" DataField="TransactionDate" DataFormatString="{0:MM/dd/yyyy}" HtmlEncode="false" />
                        <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-CssClass="text-grid-small" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Driver Contribution" DataField="DriverContribution" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Original Balance" DataField="OriginalBalance" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Service Charge" DataField="ServiceCharge" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Payment" DataField="Payment" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>

            <asp:Panel ID="pnlDeductionsNotTaken" runat="server">
                <h4>Deductions Not Taken</h4>
                <asp:GridView ID="gvDeductionsNotTaken" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Description" DataField="Description" ItemStyle-CssClass="text-grid-small" />
                        <asp:BoundField HeaderText="Tractor" DataField="Tractor" />
                        <asp:BoundField HeaderText="Driver Contribution" DataField="DriverContribution" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Original Balance" DataField="OriginalBalance" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Payment" DataField="Payment" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Total" DataField="Total" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </div>

    <div class="row no-print">
        <div class="col-md-12 text-center">
            <div>
                <asp:HyperLink ID="btnBackToSettlementList" runat="server" Text="Back to Settlement List" NavigateUrl="~/secure/ss-owner-operator.aspx" CssClass="btn-skin-default" />
            </div>
            <div class="top20">
                <asp:HyperLink ID="hlViewSourceSettlementSheet" runat="server" ToolTip="Click to see the source settlement" NavigateUrl="~/secure/ss-owner-operator-source.aspx" Text="View Source Settlement Sheet" />
            </div>
        </div>
    </div>
</asp:Content>

