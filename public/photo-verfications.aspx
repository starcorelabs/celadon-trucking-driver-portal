<%@ Page Language="VB" AutoEventWireup="false" CodeFile="photo-verfications.aspx.vb" Inherits="public_photo_verfications" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Photo Verification</title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <form id="form1" runat="server">
                <img src="../img/celadon-logo-small.svg" />
                <label>Cela-PIC (Photo Identification Confirmation)</label>

                <div class="row">
                    <asp:Panel ID="pnlDriver1" runat="server" CssClass="col-md-4 col-md-offset-2">
                        <asp:Image ID="imgDriver1" runat="server" />
                        <ul>
                            <li>
                                <asp:Label ID="lblDriverName" runat="server" Text="Fleet Member:" />
                                <asp:Label ID="lblFirstInit" runat="server" />
                                <asp:Label ID="lblLastName" runat="server" />
                            </li>
                            <li>
                                <asp:Label ID="lblMemberID" runat="server" Text="Member ID:" />
                                <asp:Label ID="lblMemberIDValue" runat="server" />
                            </li>
                            <li>
                                <asp:Label ID="lblTrailer" runat="server" Text="Trailer:" />
                                <asp:Label ID="lblTrailerValue" runat="server" />
                            </li>
                        </ul>
                    </asp:Panel>


                    <asp:Panel ID="pnlDriver2" runat="server" CssClass="col-md-4">
                        <asp:Image ID="imgDriver2" runat="server" />
                        <ul>
                            <li>
                                <asp:Label ID="lblDriverName2" runat="server" Text="Fleet Member:" />
                                <asp:Label ID="lblFirstInit2" runat="server" />
                                <asp:Label ID="lblLastName2" runat="server" />
                            </li>
                            <li>
                                <asp:Label ID="lblMemberID2" runat="server" Text="Member ID:" />
                                <asp:Label ID="lblMemberIDValue2" runat="server" />
                            </li>
                            <li>
                                <asp:Label ID="lblTrailer2" runat="server" Text="Trailer:" />
                                <asp:Label ID="lblTrailerValue2" runat="server" />
                            </li>
                        </ul>
                    </asp:Panel>
                </div>

                <asp:Panel ID="pnlHomeMessage" runat="server">
                    <p>Cela-PIC provides Celadon customers with an optional additional security measure that instantly confirms the following: The driver(s) at your location is/are Celadon employee(s). The truck and trailer at your location are Celadon equipment. The Celadon driver(s) and Celadon equipment are assigned to each other</p>
                    <p>When your dock/loading personnel enter and submit the driver ID number and truck number in the blanks to the left, they will either receive the driver photo(s) for identification confirmation, along with the assigned trailer number –or a notice that indicates the driver ID and / or truck assignment cannot be verified and a phone number to call for more information.</p>
                    <p>Celadon is pleased to offer additional peace of mind with this feature.</p>
                </asp:Panel>

                <asp:Panel ID="pnlNoMatch" runat="server">
                    <p>Unable to verify Employee ID and/or truck assignment. Please verify information is correct and re-submit Otherwise contact Celadon Operations at 317-331-4783</p>
                </asp:Panel>

                <div class="col-xs-6 col-md-3 col-md-offset-3">
                    <label>Driver ID<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDriverID" ErrorMessage="Required Field" Display="Dynamic" CssClass="alert">*</asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="txtDriverID" runat="server" CssClass="form-control" type="number" />
                </div>

                <div class="col-xs-6 col-md-3">
                    <label>Truck No<asp:RequiredFieldValidator ID="rqvTruckNo" runat="server" ControlToValidate="txtTruckNo" ErrorMessage="Required Field" Display="Dynamic" CssClass="alert">*</asp:RequiredFieldValidator></label>
                    <asp:TextBox ID="txtTruckNo" runat="server" CssClass="form-control" type="number" />
                </div>

                <div class="col-md-12">
                    <asp:Button ID="btnLookup" runat="server" Text="Search" CssClass="btn-action-celadon" OnClientClick="ga('send', 'event', 'button', 'action', 'verification-look-up');" />
                </div>
            </form>
        </div>
    </div>
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
