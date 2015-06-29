<%@ Page Title="Driver Portal" Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" MasterPageFile="~/MasterPage.master" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-10 col-md-offset-2">
            <asp:LoginView ID="LoginView2" runat="server">
                <AnonymousTemplate>
                    <h1>
                        <asp:Label ID="lblWelcomeMessage" runat="server" meta:resourcekey="lblWelcomeMessage" /></h1>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <h1>
                        <asp:Label ID="lblWelcomeUserName" runat="server" CssClass="label-color" />
                    </h1>
                </LoggedInTemplate>

                <RoleGroups>
                    <asp:RoleGroup Roles="Administrators">
                        <ContentTemplate>
                            <div>
                                <h1>
                                    <asp:Label ID="lblWelcomeUserName" runat="server" CssClass="label-color" />
                                </h1>
                                <span>Currently viewing </span>
                                <asp:Label ID="lblCurrentDriver" runat="server" />
                                <asp:HyperLink ID="hlLoadNewDriver" runat="server" NavigateUrl="~/admin/load-driver.aspx" Text=" Load New Driver" />
                            </div>
                        </ContentTemplate>
                    </asp:RoleGroup>
                </RoleGroups>

            </asp:LoginView>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <asp:LoginView ID="LoginView1" runat="server">

                <LoggedInTemplate>
                    <div id="PayrollMessages" class="payroll-message-box">
                        <asp:Panel ID="panelPayrollMessages" runat="server" ScrollBars="None" CssClass="payroll-background">
                            <div class="payroll-message-header">
                                <h3 class="payroll-message-title">Your Messages</h3>
                            </div>

                            <div class="payroll-message-card">
                                <div>
                                    <asp:Label ID="lblCurrentDate" runat="server" />
                                </div>
                                <hr class="payroll-message-hr" />
                                <div class="center-text">
                                    <asp:Panel ID="pnlLastestSettlement" runat="server">
                                        <h4>
                                            <asp:Literal ID="litYourLatest" runat="server" Text="" />
                                            Your latest settlement was
                                        <asp:LinkButton ID="lbPayAmount" runat="server" OnClick="lbPayAmount_Click" OnClientClick="ga('send', 'event', 'link', ''messages-settlement-summary');" />
                                        </h4>
                                        <div>
                                            Would you like to see all of your yearly settlements? <a href="../secure/ss-company-driver.aspx" onclick="ga('send', 'event', 'link', 'messages-settlements');">Click Here</a> to go there.
                                        </div>
                                    </asp:Panel>
                                </div>
                                <div>Looking for more? <a href="../public/mobile-menu-more.aspx" onclick="ga('send', 'event', 'link', 'messages-mobile-menu-more');">Click Here</a> to explore the site.</div>
                            </div>


                            <asp:Repeater ID="RepeaterPayrollMessages" runat="server">
                                <ItemTemplate>
                                    <div class="payroll-message-card">
                                        <p class="payroll-message-date">
                                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("FriendlyDate")%>' />
                                        </p>
                                        <hr class="payroll-message-hr" />
                                        <p>
                                            <asp:Label ID="lblMessage" runat="server" Text='<%# Eval("message")%>' />
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </asp:Panel>
                    </div>
                </LoggedInTemplate>


                <AnonymousTemplate>
                    <div class="row">

                        <div class="rounded-text-box text-spacing margin-bottom20">

                            <div class="center-large-buttons">
                                <div class="col-xs-12 col-sm-3 col-sm-offset-2 col-md-3 col-md-offset-2 margin-bottom10">
                                    <a class="btn-action-celadon btn-jumbotron" href='<%= Page.ResolveClientUrl("~/public/register.aspx")%>' role="button" onclick="ga('send', 'event', 'button', 'action', 'jumbotron-register');" style="text-decoration: none;">REGISTER</a>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-sm-offset-1 col-md-4 col-md-offset-1">
                                    <a class="btn-action-celadon btn-jumbotron" href='<%= Page.ResolveClientUrl("~/public/login.aspx")%>' role="button" onclick="ga('send', 'event', 'button', 'action', 'jumbotron-login');" style="text-decoration: none;">LOGIN</a>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="padding-top20">
                                        <p>
                                            Welcome to the Driver Portal! The Portal was created to provide you with a mobile friendly means of viewing your settlement sheets.</p.>
                                 <p>It also provides easy access to other important information. Here you'll find your company profile, vacation schedule, and document library to name a few. </p>
                                            <p>If this is your first time to the Driver Portal please register using your Driver ID. If you've already registered simply login with your Driver ID and password.</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </AnonymousTemplate>
            </asp:LoginView>
        </div>
    </div>
</asp:Content>
