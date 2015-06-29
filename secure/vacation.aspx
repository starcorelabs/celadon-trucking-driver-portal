<%@ Page Title="Vacation Summary" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="vacation.aspx.vb" Inherits="vacation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/master-style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-xs-12 col-md-10 col-md-offset-1">
            <h2 class="label-color">Vacation Summary</h2>
        </div>
    </div>

    <asp:Panel ID="pnlVacationSummaryNoVacation" runat="server" Visible="false" CssClass="row">
        <div class="col-xs-12 col-md-10 col-md-offset-2">
            <p>Please call the payroll department <a href="tel:+18002352366" onclick="ga('send', 'event', 'button', 'action', 'contact-us-vacation-call');">1-800-235-2366</a> for questions about your current vacation availablity. </p>
        </div>
    </asp:Panel>

    <asp:Panel ID="pnlVacationSummaryPanel" runat="server" CssClass="row">
        <div class="col-xs-6 col-sm-6 col-md-2 col-md-offset-2">
            <asp:Panel ID="pnlEDO" runat="server" CssClass="panel-vacation panel-default">
                <div class="panel-heading-vacation">
                    <label class="panel-title-vacation">EDO Available</label>
                </div>
                <div class="panel-body-vacation">
                    <asp:Label ID="lblEarnedDaysOff" runat="server" />
                </div>
            </asp:Panel>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-2">
            <asp:Panel ID="pnlVDO" runat="server" CssClass="panel-vacation panel-default">
                <div class="panel-heading-vacation">
                    <label class="panel-title-vacation">Vacation Days Available</label>
                </div>
                <div class="panel-body-vacation">
                    <asp:Label ID="lblVacationDaysOff" runat="server" CssClass="graySingleRow" />
                </div>
            </asp:Panel>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-2">
            <asp:Panel ID="pnlVacationGiven" runat="server" CssClass="panel-vacation panel-default">
                <div class="panel-heading-vacation">
                    <label class="panel-title-vacation">Last Vacation Earned</label>
                </div>
                <div class="panel-body-vacation">
                    <asp:Label ID="lblVacationStartDate" runat="server" />
                </div>
            </asp:Panel>
        </div>
        <div class="col-xs-6 col-sm-6 col-md-2">
            <asp:Panel ID="pnlVacationBonusMiles" runat="server" CssClass="panel-vacation panel-default">
                <div class="panel-heading-vacation">
                    <label class="panel-title-vacation">Vacation Miles</label>
                </div>
                <div class="panel-body-vacation">
                    <asp:Label ID="lblVacationMiles" runat="server" />
                </div>
            </asp:Panel>
        </div>
    </asp:Panel>

    <asp:panel ID="pnlVacationRequestsForTheSelectedYear" runat="server" class="row">
        <div class="col-xs-12 col-md-10 col-md-offset-1 margin-bottom30">
            <div class="label-color">
                <h4>Requests for the selected year</h4>
            </div>
            <div class="year-dropdown margin-bottom10">
                <span class="label-color">Selected Year </span>
                <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true">
                    <asp:ListItem Text="2014" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="2013"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div id="vacation">
                <div id="grid" class="table-responsive">
                    <asp:GridView ID="gvVacation" runat="server" AutoGenerateColumns="false" Visible="true" CssClass="table table-condensed table-striped pivot-gridview">
                        <Columns>

                            <%--Desktop--%>
                            <asp:BoundField HeaderText="Status" DataField="Status" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="Priority" DataField="Priority" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="Start" DataField="ScheduleStartDate" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="End" DataField="ScheduleEndDate" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="Actual Start" DataField="ActualStartDate" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="Actual End" DataField="ActualEndDate" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="Location" DataField="Location" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="Reason" DataField="Reason" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />
                            <asp:BoundField HeaderText="Cancel Reason" DataField="CancelReason" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-Font-Size="Small" ItemStyle-Font-Size="X-Small" />

                            <%--Mobile --%>
                            <asp:TemplateField ItemStyle-CssClass="visible-xs rowWhite" HeaderStyle-CssClass="visible-xs">
                                <HeaderStyle CssClass="hidden-xs hidden-sm hidden-md hidden-lg" />
                                <ItemTemplate>
                                    <div class="pivot-gridview rowWhite">
                                        <ul>
                                            <li class="row">
                                                <asp:Label ID="Label2" runat="server" Text="Status" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label4" runat="server" Text="Priority" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Priority")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label5" runat="server" Text="Start" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("ScheduleStartDate")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label7" runat="server" Text="End" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="lblBasePlateID" runat="server" Text='<%# Eval("ScheduleEndDate")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label9" runat="server" Text="Actual Start" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("ActualStartDate")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label11" runat="server" Text="Actual End" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("ActualEndDate")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label13" runat="server" Text="Location" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("Location")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label8" runat="server" Text="Reason" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label15" runat="server" Text='<%# Eval("Reason")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label16" runat="server" Text="Cancel Reason" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label17" runat="server" Text='<%# Eval("CancelReason")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                        </ul>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </asp:panel>

</asp:Content>
