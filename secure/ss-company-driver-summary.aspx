<%@ Page Title="CD Settlement Summary" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ss-company-driver-summary.aspx.vb" Inherits="secure_ss_company_driver_summary" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/master-style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <h2 class="label-color">
                <asp:Label ID="lblSettlementDate" runat="server" />
                <label class="hidden-xs">Company Driver</label>
                Settlement 
            </h2>
            <h4>
                <asp:Repeater ID="RepeaterFinalTotals" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("Category")%>' CssClass="blue-title" />
                        <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount")%>' CssClass="blue-title" />
                        <asp:Label ID="lblSeperator" runat="server" CssClass="blue-title" />
                    </ItemTemplate>
                </asp:Repeater>
            </h4>
            <hr />
            <div>
                <asp:Button ID="btnEmailSettlement" runat="server" Text="Send to Email" CssClass="btn-skin-default" OnClientClick="ga('send', 'event', 'button', 'navigation', 'email-cd-settlement');" />
                <asp:Button ID="btnFaxSettlement" runat="server" Text="Send to Fax" CssClass="btn-skin-default" OnClientClick="ga('send', 'event', 'button', 'navigation', 'fax-cd-settlement');" />
            </div>
            <h3 class="label-color">Summary</h3>
            <div id="summaryTable" class="table-responsive">
                <asp:GridView ID="gvSummary" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                    <Columns>
                        <asp:BoundField HeaderText="Category" DataField="Category" />
                        <asp:BoundField HeaderText="Additions" DataField="Additions" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Deductions" DataField="Deductions" DataFormatString="{0:c}" />
                        <asp:BoundField HeaderText="Wages" DataField="Wages" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </div>

            <asp:Panel ID="pnlTrips" runat="server" CssClass="trip-block">
                <hr />
                <h2 class="label-color">Trips</h2>
                <asp:Repeater ID="RepeaterTrips" runat="server">
                    <ItemTemplate>
                        <div id="divGridRow" runat="server">
                            <div class="panel panel-default trip-card col-xs-12 col-sm-12 col-md-3">
                                <div class="panel-heading trip-header-center">
                                    <h3 class="panel-title">
                                        <asp:Label ID="lblHeaderCityTop" runat="server" />,
                                <asp:Label ID="lblHeaderStateCodeTop" runat="server" /></h3>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div id="stateImage" runat="server" class="col-xs-4 trip-card-state-image trip-image-text">
                                            <div class="trip-card-silotte-font">
                                                <asp:Label ID="lblDispatchMM" runat="server" />
                                                <asp:Label ID="lblDispatchYY" runat="server" />
                                            </div>
                                            <div class="trip-total-truck-milage" >
                                                <asp:Label ID="lblTotalMilageTop" runat="server" Text='<%# Eval("TotalMilage")%>' /><span> Truck Miles</span>
                                            </div>
                                        </div>
                                        <div class="col-xs-4 col-xs-offset-4 trip-pay">
                                            <asp:Label ID="lblTotalMilagePayTop" runat="server" />
                                        </div>
                                    </div>
                                    <div class="trip-table-fixed-height">
                                        <table class="trip-table">
                                            <tr>
                                                <td style="width: 120px; text-align: right;">
                                                    <asp:Label ID="lblPro" runat="server" Text='<%# Eval("Pro")%>' CssClass="trip-table-label" />
                                                </td>
                                                <td style="width: 10px;"></td>
                                                <td>
                                                    <asp:Label ID="lblDispatch" runat="server" CssClass="trip-table-label" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">
                                                    <asp:Label ID="lblDriverOrigin" runat="server" Text="Driver Origin" CssClass="trip-table-label" />
                                                </td>
                                                <td style="width: 10px;"></td>
                                                <td>
                                                    <asp:Label ID="lblDriverOriginCity" runat="server" Text='<%# Eval("DriverOriginCity") & ", "%>' CssClass="trip-table-label" />
                                                    <asp:Label ID="lblDriverOriginStateCode" runat="server" Text='<%# Eval("DriverOriginStateCode")%>' CssClass="trip-table-label" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">
                                                    <asp:Label ID="lblOrigin" runat="server" Text="Origin" CssClass="trip-table-label" />
                                                </td>
                                                <td style="width: 10px;"></td>
                                                <td>
                                                    <asp:Label ID="lblOriginCity" runat="server" Text='<%# Eval("OriginCity") & ", "%>' class="trip-table-label" />
                                                    <asp:Label ID="lblOriginStateCode" runat="server" Text='<%# Eval("OriginStateCode")%>' CssClass="trip-table-label" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">
                                                    <asp:Label ID="lblDestination" runat="server" Text="Destination" CssClass="trip-table-label" />
                                                </td>
                                                <td style="width: 10px;"></td>
                                                <td>
                                                    <asp:Label ID="lblDestinationCity" runat="server" Text='<%# Eval("DestinationCity") & ", "%>' CssClass="trip-table-label" />
                                                    <asp:Label ID="lblDestinationStateCode" runat="server" Text='<%# Eval("DestinationStateCode")%>' CssClass="trip-table-label" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">
                                                    <asp:Label ID="lblEmptyMove" runat="server" Text="Empty Move" CssClass="trip-table-label" />
                                                </td>
                                                <td style="width: 10px;"></td>
                                                <td>
                                                    <asp:Label ID="lblEmptyMoveCity" runat="server" Text='<%# Eval("EmptyMoveCity") & ", "%>' CssClass="trip-table-label" />
                                                    <asp:Label ID="lblEmptyMoveStateCode" runat="server" Text='<%# Eval("EmptyMoveStateCode")%>' CssClass="trip-table-label" />
                                            </tr>
                                            <tr>
                                                <td style="text-align: right;">
                                                    <asp:Label ID="lblTransfer" runat="server" Text="Terminal Transfer" CssClass="trip-table-label" />
                                                </td>
                                                <td style="width: 10px;"></td>
                                                <td>
                                                    <asp:Label ID="lblTransferCity" runat="server" Text='<%# Eval("TransferCity") & ", "%>' CssClass="trip-table-label" />
                                                    <asp:Label ID="lblTransferStateCode" runat="server" Text='<%# Eval("TransferStateCode")%>' CssClass="trip-table-label" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="trip-numbers-container">
                                        <span class="span2 btn-skin-default" tabindex="0">Show Me The Numbers</span>
                                        <div class="trip-numbers">
                                            <table class="trip-numbers-table" >
                                                <tr>
                                                    <td></td>
                                                    <td>Miles</td>
                                                    <td>Rate</td>
                                                    <td>Taxable</td>
                                                    <td>Non-Taxable</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblLoadedMiles" runat="server" Text="Loaded Miles" /></td>
                                                    <td>
                                                        <asp:Label ID="lblLoadedMilesValue" runat="server" Text='<%# Eval("LoadedMiles")%>' /></td>
                                                    <td>
                                                        <asp:Label ID="lblLoadedMilesRate" runat="server" Text='<%# "@ " & Eval("LoadedMilesRate", "{0:N}")%>' /></td>
                                                    <td>
                                                        <asp:Label ID="lblLoadedMilesAmount" runat="server" Text='<%# Eval("LoadedMilesAmount", "{0:c}")%>' /></td>
                                                </tr>
                                                <tr>
                                                    <td class="border-bottom">
                                                        <asp:Label ID="lblEmptyMilesHeader" runat="server" Text="Empty Miles" /></td>
                                                    <td class="border-bottom">
                                                        <asp:Label ID="lblEmptyMiles" runat="server" Text='<%# Eval("EmptyMiles")%>' /></td>
                                                    <td class="border-bottom">
                                                        <asp:Label ID="lblEmptyMilesRate" runat="server" Text='<%# "@ " & Eval("EmptyMilesRate", "{0:N}")%>' /></td>
                                                    <td class="border-bottom">
                                                        <asp:Label ID="lblEmptyMilesAmount" runat="server" Text='<%# Eval("EmptyMilesAmount", "{0:c}")%>' /></td>
                                                </tr>
                                                <tr>
                                                    <td>Total</td>
                                                    <td>
                                                        <asp:Label ID="lblTotalMilage" runat="server" Text='<%# Eval("TotalMilage")%>' /></td>
                                                    <td></td>
                                                    <td>
                                                        <asp:Label ID="lblTotalMilagePayTaxable" runat="server" Text='<%# Eval("TotalMilagePayTaxable", "{0:c}")%>' /></td>
                                                    <td>
                                                        <asp:Label ID="lblTotalMilagePayNonTaxable" runat="server" Text='<%# Eval("TotalMilagePayNonTaxable", "{0:c}")%>' /></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </asp:Panel>

            <div class="clearfix"></div>

            <asp:Panel ID="pnlReimbursableExpenses" CssClass="row" runat="server">
                <div class="col-md-12">
                    <hr />
                    <h3 class="label-color">Reimbursable Expenses</h3>
                    <div class="table-responsive">
                        <asp:GridView ID="gvReimbursableExpenses" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                            <Columns>
                                <asp:BoundField HeaderText="Pro" DataField="Pro" HeaderStyle-Width="80px" />
                                <asp:BoundField HeaderText="Category" DataField="Category" />
                                <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <h4>
                        <label>Total Reimbursable Expenses </label>
                        <asp:Label ID="lblTotalReimbursableExpenses" runat="server" />
                    </h4>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlAdjustmentsDetail" CssClass="row" runat="server">
                <div class="col-md-12">
                    <hr />
                    <h3 class="label-color">Adjustments Detail</h3>
                    <div id="dvAdjustmentsDetail" class="table-responsive">
                        <asp:GridView ID="gvAdjustments" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                            <Columns>
                                <asp:BoundField HeaderText="Category" DataField="Category" />
                                <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <h4>
                        <label>Total Adjustments </label>
                        <asp:Label ID="lblTotalAdjustments" runat="server" />
                    </h4>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlAdvancesDetail" CssClass="row" runat="server">
                <div class="col-md-12">
                    <hr />
                    <h3 class="label-color">Advances Detail</h3>
                    <div class="table-responsive">
                        <asp:GridView ID="gvAdvances" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                            <Columns>
                                <asp:BoundField HeaderText="Pro" DataField="Pro" HeaderStyle-Width="80px" />
                                <asp:BoundField HeaderText="Date" DataField="Date" DataFormatString="{0:d}" />
                                <asp:BoundField HeaderText="Category" DataField="Category" />
                                <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <h4>
                        <label>Total Advances </label>
                        <asp:Label ID="lblTotalAdvances" runat="server" />
                    </h4>
                </div>
            </asp:Panel>

            <asp:Panel ID="pnlDeductionsDetail" CssClass="row" runat="server">
                <div class="col-md-12">
                    <hr />
                    <h3 class="label-color">Deductions Detail</h3>
                    <div id="dvDeductionsDetail" class="table-responsive">
                        <asp:GridView ID="gvDeductions" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-shim table-celadon-colors">
                            <Columns>
                                <asp:BoundField HeaderText="Category" DataField="Category" />
                                <asp:BoundField HeaderText="Amount" DataField="Amount" DataFormatString="{0:c}" />
                            </Columns>
                        </asp:GridView>
                    </div>
                    <h5>
                        <label>Total Deductions </label>
                        <asp:Label ID="lblTotalDeductions" runat="server" />
                    </h5>
                </div>
            </asp:Panel>

            <div class="row">
                <div class="col-md-12 text-center">
                    <div>
                        <asp:HyperLink ID="btnBackToSettlementList" runat="server" Text="Back to Settlement List" NavigateUrl="~/secure/ss-company-driver.aspx" CssClass="btn-skin-default" Style="text-decoration: none;" />
                    </div>
                    <div class="top20">
                        <asp:HyperLink ID="hlViewSourceSettlementSheet" runat="server" ToolTip="Click to see the source settlement" NavigateUrl="~/secure/ss-company-driver-source.aspx" Text="View Source Settlement Sheet" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

