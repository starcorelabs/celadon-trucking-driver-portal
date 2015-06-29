<%@  Language="VB" AutoEventWireup="false" CodeFile="ss-company-driver-report.aspx.vb" Inherits="secure_ss_company_driver_report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="../css/style.css" rel="stylesheet" />
    <title>CD Settlement Report</title>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="iSeriesText" style="margin: 0 auto 0 auto; width: 700px;">
            <asp:Label ID="lblSettlement" runat="server" />
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
