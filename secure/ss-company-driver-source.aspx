<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ss-company-driver-source.aspx.vb" Inherits="secure_ss_company_driver_source" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/master-style.css" rel="stylesheet" />
    <title>CD Settlement Summary Source</title>
</head>
<body class="body-soruce">
    <form id="form1" runat="server">
        <div class="center-source">
            <asp:GridView ID="GridViewSSRECO" runat="server" AutoGenerateColumns="true" OnRowDataBound="GridViewSSRECO_RowDataBound" CssClass="gridview-simple" ShowHeader="false" BorderStyle="None">
            </asp:GridView>
        </div>
        <div class="btn-center">
            <asp:HyperLink ID="btnBackToSettlementSummary" runat="server" Text="Back to Settlement" NavigateUrl="~/secure/ss-company-driver-summary.aspx" CssClass="btn btn-primary" Style="font-family: Abel, Arial, sans-serif; margin: 15px 0 20px 0;" OnClientClick="ga('send', 'event', 'button', 'navigation', 'cd-back-to-cd-settlement');" />
        </div>
    </form>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-38688002-28', 'auto');
        ga('send', 'pageview');

    </script>
</body>
</html>
