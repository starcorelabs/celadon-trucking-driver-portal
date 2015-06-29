<%@ Page Title="Home" Language="VB" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" href="img/favicon.ico" />

    <!--Master Page Specific Meta Tags-->
    <meta property="og:site_name" content="Celadon Trucking" />
    <meta property="og:type" content="website" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:locale:alternate" content="es_ES" />
    <meta http-equiv="Content-Language" content="en" />
    <meta name="language" content="English" />
    <meta name="geo.region" content="US-IN" />
    <meta name="geo.placename" content="Indianapolis" />
    <meta name="geo.position" content="39.817409;-85.996882" />
    <meta name="ICBM" content="39.817409, -85.996882" />
    <!--End Master Page Specific Meta Tags-->
    <title>Driver Portal</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>

<body class="body-home">
    <form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top no-print" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/home.aspx">
                        <img src='<%= Page.ResolveClientUrl("~/img/celadon-logo.svg")%>' alt="Celadon Driver Portal" class="img-responsive-sm svg-logo"/>
                    </asp:HyperLink>
                    <button type="button" class="navbar-toggle c-logo" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <!-- navbar-header -->
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right no-print">
                        <asp:LoginView ID="LoginView1" runat="server">
                            <AnonymousTemplate>
                                <li class="nav">
                                    <asp:HyperLink ID="hlRegister" runat="server" NavigateUrl="~/account-management/register.aspx" Text="Register" />
                                </li>
                                <li class="nav">
                                    <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/public/login.aspx" Text="Login" />
                                </li>
                                <li class="nav">
                                    <asp:HyperLink ID="hlForgotPassword" runat="server" NavigateUrl="~/account-management/forgot-password.aspx" Text="Forgot Password" />
                                </li>
                            </AnonymousTemplate>
                            <LoggedInTemplate>
                                <li class="nav">
                                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                                </li>
                                <li class="nav undefined-link">
                                    <asp:HyperLink ID="hlChangePassword" runat="server" NavigateUrl="#" Text="Change Password" />
                                </li>
                            </LoggedInTemplate>
                        </asp:LoginView>
                        <li class="nav">
                            <asp:HyperLink ID="hlHome1" runat="server" NavigateUrl="~/home.aspx">
                                <asp:Image ID="imgHome" runat="server" ImageUrl="~/img/house-icon.png" class="homeIcon" AlternateText="Home" />Home
                            </asp:HyperLink>
                            <ul class="visible-xs menu-space ">
                                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="False" />
                                <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" />
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!--/.nav-collapse -->
        </div>
        <div class="container">
            <div class="jumbotron no-print">
                <asp:LoginView ID="LoginView2" runat="server">
                    <AnonymousTemplate>
                        <h1>WELCOME TO THE DRIVER PORTAL</h1>
                        <div class="row big-buttons">
                            <div class="col-md-3 col-md-offset-2"><a class="btn btn-lg btn-primary" href='<%= Page.ResolveClientUrl("~/account-management/register.aspx")%>' role="button">REGISTER</a></div>
                            <div class="col-md-4 col-md-offset-1"><a class="btn btn-lg btn-primary" href='<%= Page.ResolveClientUrl("~/public/login.aspx")%>' role="button">LOGIN</a></div>
                        </div>
                    </AnonymousTemplate>
                    <LoggedInTemplate>
                        <h1>
                            <asp:Label ID="lblUserName" runat="server" />
                        </h1>
                    </LoggedInTemplate>
                </asp:LoginView>
            </div>

            <div class="admin-view">
            <asp:LoginView ID="LoginView3" runat="server">
                <RoleGroups>
                    <asp:RoleGroup Roles="Administrators">
                        <ContentTemplate>
                            <div>
                                <span>Currently viewing </span>
                                <asp:Label ID="lblCurrentDriver" runat="server" />
                                <a href="admin/load-driver.aspx"> Load New Driver</a>
                            </div>
                        </ContentTemplate>
                    </asp:RoleGroup>
                </RoleGroups>
            </asp:LoginView>
            </div>


            <div class="row marketing">
                <div id="dashboardTools" class="col-md-4 col-xs-12">
                    <ul>
                        <img src="./img/driver-dashboard.png" class="image-space visible-md visible-lg" alt="Dashboard Tools" title="Dashboard Tools" />
                        <li class="bold">Dashboard Tools</li>
                        <li><a href="./secure/ss-company-driver.aspx">Settlement Sheets</a></li>
                        <li><a href="./secure/w2.aspx">W2</a></li>
                        <li><a href="./secure/1099.aspx">1099</a></li>
                        <li><a href="./pdf/medical-release-form.pdf" target="_blank">Medical Release Form</a></li>
                        <li class="undefined-link"><a href="./secure/vacation.aspx">Vacation Requests</a></li>
                    </ul>
                </div>
                <div id="driverInformation" class="col-md-4 col-xs-12">
                    <ul>
                        <img src="./img/driver-information.png" class="image-space visible-md visible-lg" alt="Driver Information" title="Driver Information" />
                        <li class="bold">Driver Information</li>
                        <li><a href="../secure/my-information.aspx">My Information</a></li>
                        <li><a href="https://dhos.myqualcomm.com/dhm/" target="_blank">E-Logs</a></li>
                    </ul>
                </div>
                <div id="celadonInformation" class="col-md-4 col-xs-12">
                    <ul>
                        <img src="./img/celadon-information.png" class="image-space visible-md visible-lg" alt="Celadon Information" title="Celadon Information" />
                        <li class="bold">Celadon Information</li>
                        <li><a href="http://celadon.mpistore.com/" target="_blank">Celadon Store</a></li>
                        <li><a href="./public/terminals.aspx">Terminals</a></li>
                        <li><a href="./public/contact-list.aspx">Contact List</a></li>
                        <li><a href="./public/lost-trailers.aspx">Lost Trailers</a></li>
                        <li><a href="./public/faq.aspx">FAQs</a></li>
                    </ul>

                </div>
            </div>
            <div class="no-print">
                <div class="footer">
                    <a href="https://www.facebook.com/CeladonTrucking" target="_blank">
                        <img src='<%= Page.ResolveClientUrl("~/img/celadon-facebook.png")%>' style="height: 30px;" alt="Facebook" title="Celadon Facebook" /></a>

                    <a href="https://twitter.com/Drive_Celadon/" target="_blank">
                        <img src='<%= Page.ResolveClientUrl("~/img/celadon-twitter.png")%>' style="height: 30px;" alt="Twitter" title="Celadon Twitter" /></a>

                    <a href="https://plus.google.com/105797614578086457423/posts" target="_blank">
                        <img src='<%= Page.ResolveClientUrl("~/img/celadon-google-plus.png")%>' style="height: 30px;" alt="Google Plus" title="Celadon Google Plus" /></a>

                    <a href="http://www.youtube.com/user/CeladonTrucking" target="_blank">
                        <img src='<%= Page.ResolveClientUrl("~/img/celadon-youtube.png")%>' style="height: 30px;" alt="Youtube" title="Celadon Youtube" /></a>
                </div>
            </div>
        </div>
        <!-- end container -->
    </form>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/jquery-1.11.0.min.js"> </script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
