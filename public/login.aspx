<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Access your driver account. Get the latest payroll information." />
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <style>
        @import url(http://fonts.googleapis.com/css?family=Abel);
        @import url(https://fonts.googleapis.com/css?family=Abel);

        /* template style */
        .container {
            padding-left: 10px;
            padding-right: 10px;
        }

        body {
            padding: 0px;
            margin: 0px;
            background-color: #fff;
            font-family: 'Abel', sans-serif;
        }

        label {
            font-size: medium;
            font-weight: normal;
        }

        .center {
            align-content: center;
            text-align: center;
        }

        .containerCeladonLogo {
            text-align: center;
            padding-top: 0px;
            padding-bottom: 5px;
            margin-top: 0px;
        }

        .celadonLogo {
            height: auto;
            width: 200px;
        }

        .driverBlueBox {
            position: relative;
            z-index: 1;
            background: #0e76bb;
            color: white;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: -28px;
            height: 35px;
            width: 200px;
            font-size: x-large;
            font-family: Arial, sans-serif;
            font-weight: bold;
            text-align: center;
            vertical-align: middle;
            border-radius: 5px;
        }

            .driverBlueBox label {
                font-size: large;
            }

        .container {
            background: gainsboro;
            border-radius: 5px;
            width: 300px;
            border: 1px solid #cccccb;
        }

        .stretch {
            height: 410px;
        }


        .dropdownlist {
            margin-top: 40px;
            margin-bottom: 20px;
            width: 70px;
            margin-left: auto;
            margin-right: auto;
        }

        #ddlTaxYear {
            font-size: large;
        }

        .downloadPDF {
            margin-top: 15px;
            height: 70px;
        }

        #btnDownloadPDF {
            width: 100px;
            margin: 0;
            margin-top: 5px;
            margin-right: 65px;
        }


        .personalEmail {
            margin-top: 20px;
            margin-bottom: 50px;
        }


        #tbEmailAddress {
            width: 270px;
        }


        #btnEmailSend {
            width: 100px;
            float: left;
            margin: 0;
            margin-top: 10px;
            margin-right: 65px;
        }


        .fax {
            margin-top: 70px;
        }


        #tbFaxNumber {
            width: 110px;
        }


        #btnFaxSend {
            width: 100px;
            float: left;
            margin-top: 10px;
            margin-right: 65px;
            margin-bottom: 20px;
        }



        .form-signin {
            max-width: 330px;
            padding: 15px;
            padding-top: 50px;
            margin: 0 auto;
        }

        .iconIdentity {
            background: url('../img/identity.png') no-repeat #fff;
            background-position: 5% center;
            padding: 6px 45px;
        }

        .iconSecurity {
            background: url('../img/security.png') no-repeat #fff;
            background-position: 5% center;
            padding: 6px 45px;
        }

        .containerActionButtons {
            text-align: center;
            margin-top: 5px;
            margin-bottom: 10px;
        }


        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin .checkbox {
            font-weight: normal;
        }

        .form-signin .form-control {
            position: relative;
            font-size: 16px;
            height: auto;
            padding: 10px 10px 10px 40px;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

            .form-signin .form-control:focus {
                z-index: 2;
            }

        .form-signin input[type="text"] {
            margin-bottom: -1px;
            border-bottom-left-radius: 0;
            border-bottom-right-radius: 0;
        }

        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }

        .containerFAQ {
            margin-top: 30px;
            height: 40px;
            border-radius: 5px;
            padding-top: 5px;
            text-align: center;
        }

        .pageMessage {
            padding-top: 30px;
        }

        .loadMessage {
            margin-top: 10px;
        }

        .acceptLoad {
            margin-top: 10px;
        }


        .margin-top40 {
            margin-top: 40px;
        }

        .margin-top12 {
            margin-top: 12px;
        }

        .margin-top10 {
            margin-top: 10px;
        }


        .margin-top15 {
            margin-top: 15px;
        }


        .margin-left33 {
            margin-left: 33px;
        }

        .margin-left50 {
            margin-left: 84px;
        }

        .driver-id-text {
            font-size: 24px;
        }

        .btn-action-celadon {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: normal;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 5px;
            color: #fff;
            background-color: #428bca;
            border-color: #357ebd;
        }


            .btn-action-celadon:hover,
            .btn-action-celadon:focus,
            .btn-action-celadon:active,
            .btn-action-celadon.active,
            .open .dropdown-toggle.btn-action-celadon {
                color: #fff;
                background-color: #3276b1;
                border-color: #285e8e;
            }

            .btn-action-celadon:active,
            .btn-action-celadon.active,
            .open .dropdown-toggle.btn-action-celadon {
                background-image: none;
            }

        .container-attention {
            width: 300px;
            margin-top: 10px;
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div class="container-attention">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h2 class="panel-title">Welcome Company Drivers</h2>
                </div>
                <div class="panel-body">
                    <p>Welcome to the mobile friendly driver portal. You can access your settlements and more from this new site.</p>
                    <p>The driver portal website is only available to Celadon company drivers and Celadon owner operators. We are currently building the site for all other divisions. Thank you for your patience.</p>

                    <p>The website address is driver.celadontrucking.com</p>
                </div>
            </div>
        </div>

        <div class="driverBlueBox" style="margin-top: 30px;">
            <label style="font-size: 16pt;">Driver Portal</label>
        </div>

        <div class="container">
            <asp:Panel ID="pnlLogIn" runat="server">
                <section>
                    <div style="margin-top: 40px;">
                        Access your driver account and get the latest settlement information.   
                    </div>
                    <asp:Login ID="Login1" runat="server" EnableTheming="False" Width="100%" FailureText="The driver id or password you entered is incorrect. ">
                        <LayoutTemplate>
                            <div>
                                <label style="margin-top: 10px;">Driver ID</label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="form-control iconIdentity" AutoCompleteType="None" type="" Width="100%" />
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Driver ID is required" ToolTip="Driver ID is required" ValidationGroup="Login1" CssClass="text-danger" />
                            </div>
                            <div>
                                <label>Password</label>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control iconSecurity" Width="100%" />
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" ToolTip="Password is required" ValidationGroup="Login1" CssClass="text-danger" />
                            </div>
                            <div>
                                <asp:Label ID="FailureText" runat="server" EnableViewState="False" Style="color: Red;" />
                            </div>
                            <div class="containerActionButtons">
                                <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" CssClass="btn-action-celadon" Style="width: 100px; float: left; margin: 0; margin-right: 65px;" OnClientClick="ga('send', 'event', 'button', 'navigation', 'login');" />
                                <button onclick="location.href='http://www.celadontrucking.com'" class="btn-action-celadon" style="width: 100px; float: left; margin: 0;" type="button" onclick="ga('send', 'event', 'button', 'navigation', 'login-cancel');">Cancel</button>
                            </div>
                        </LayoutTemplate>
                    </asp:Login>
                    <div style="margin-top: 20px;">
                        <div>
                            <label>Forgot your password? </label>
                            <asp:LinkButton ID="btnForgot" runat="server" Text="Click Here" OnClick="btnForgot_Click" OnClientClick="ga('send', 'event', 'button', 'navigation', 'forgot-password');" />
                        </div>
                        <div style="margin-top: 5px;">
                            <label>Haven't signed up yet? </label>
                            <asp:LinkButton ID="btnSignup" runat="server" Text="Register Here" OnClick="btnSignup_Click" OnClientClick="ga('send', 'event', 'button', 'navigation', 'registration');" />
                        </div>
                    </div>

                    <div style="margin-top: 20px; margin-bottom: 20px;">
                        <div>Did you know you can come directly to this page?</div>
                        <div>The web address is: <a href="https://driver.celadontrucking.com">driver.celadontrucking.com</a></div>
                    </div>
                </section>
            </asp:Panel>

            <asp:Panel ID="pnlMaintenance" runat="server">
                <section style="margin-top: 40px; margin-bottom: 20px;">
                    <h3>System Maintenance</h3>
                    <p>Sorry for the inconvience the system is undergoing nightly maintence.</p>
                    <p>Please log in after 4 am.</p>
                </section>
            </asp:Panel>
        </div>

        <div class="container containerFAQ">
            <section>
                <a href="/public/faq.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'login-FAQ');">
                    <div>
                        <img src="../img/faq.png" alt="FAQ" style="margin-right: 10px;" />
                        <label>Frequently Asked Questions</label>
                    </div>
                </a>
            </section>
        </div>
        <%--        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://code.jquery.com/jquery.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>--%>
    </form>
    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-38688002-28', 'celadontrucking.com');
        ga('send', 'pageview');

    </script>
</body>
</html>
