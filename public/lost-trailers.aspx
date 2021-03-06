﻿<%@ Page Title="Lost Trailers" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="lost-trailers.aspx.vb" Inherits="lost_trailers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h2 class="label-color">Lost Trailers</h2>
            <hr />
            <asp:Panel runat="server" ID="pnlLostTrailors" SkinID="pnlLostTrailors">
                <p>If you found a lost trailer, please contact Brandon Gilliam or Tom Grunert at <a href="tel:+18002352366">1-800-235-2366</a></p>
                <div id="trailerGridView" class="table-responsive">
                    <asp:GridView ID="gvTrailers" runat="server" AutoGenerateColumns="false" CssClass="table table-condensed table-striped pivot-gridview">
                        <Columns>
                            <%--Desktop--%>
                            <asp:BoundField HeaderText="Trailer" DataField="TrailerNo" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" />
                            <asp:BoundField HeaderText="Serial" DataField="SerialNo" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" />
                            <asp:BoundField HeaderText="State" DataField="State" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" />
                            <asp:BoundField HeaderText="Plate" DataField="BasePlateID" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" />
                            <asp:BoundField HeaderText="Model" DataField="MakeModel" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" />
                            <asp:BoundField HeaderText="Customer" DataField="SpottedTrailerCustomer" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" />
                            <asp:BoundField HeaderText="City State" DataField="SpottedTrailerCityState" ItemStyle-CssClass="visible-sm visible-md visible-lg" HeaderStyle-CssClass="visible-sm visible-md visible-lg" />

                            <%--Mobile --%>
                            <asp:TemplateField ItemStyle-CssClass="visible-xs rowWhite" HeaderStyle-CssClass="visible-xs">
                                <HeaderStyle CssClass="hidden-xs hidden-sm hidden-md hidden-lg" />
                                <ItemTemplate>
                                    <div class="pivot-gridview rowWhite">
                                        <ul>
                                            <li class="row">
                                                <asp:Label ID="Label2" runat="server" Text="Trailer" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TrailerNo")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label4" runat="server" Text="Serial" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("SerialNo")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label5" runat="server" Text="State" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("State")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label7" runat="server" Text="Plate" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="lblBasePlateID" runat="server" Text='<%# Eval("BasePlateID")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label9" runat="server" Text="Model" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("MakeModel")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label11" runat="server" Text="Customer" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("SpottedTrailerCustomer")%>' CssClass="col-xs-9 rowGray" />
                                            </li>
                                            <li class="row">
                                                <asp:Label ID="Label13" runat="server" Text="Location" CssClass="col-xs-3 pivot-gridview-mobile" />
                                                <asp:Label ID="Label14" runat="server" Text='<%# Eval("SpottedTrailerCityState")%>' CssClass="col-xs-9 rowWhite" />
                                            </li>
                                        </ul>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

