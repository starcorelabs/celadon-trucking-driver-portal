<%@ Page Title="Mobile Menu More" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="mobile-menu-more.aspx.vb" Inherits="public_mobile_menu_more" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mobile-menu-wrapper">
        <h1 class="where-to-next">TIME TO EXPLORE.</h1>
        <div class="hr-mobile-menu"></div>
        <div class="box-link-divs">
            <a href="../secure/ss-company-driver.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-ss-cd');">
                <div>
                    <span class="glyphicon glyphicon-usd"></span>
                    <label>Company Driver Settlements</label>
                </div>
            </a>
            <a href="../secure/ss-company-driver-ytd-accumulated.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-ss-cd-ytd');">
                <div>
                    <span class="glyphicon glyphicon-usd"></span>
                    <label>Company Driver Yearly</label>
                </div>
            </a>

            <a href="../secure/ss-owner-operator.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-ss-oo');">
                <div>
                    <span class="glyphicon glyphicon-usd"></span>
                    <label>Owner Operator Settlements</label>
                </div>
            </a>
            <a href="../secure/ss-owner-operator-ytd-accumulated.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-ss-oo-ytd');">
                <div>
                    <span class="glyphicon glyphicon-usd"></span>
                    <label>Owner Operator Yearly</label>
                </div>
            </a>

            <a href="../secure/my-profile.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-profile');">
                <div>
                    <span class="glyphicon glyphicon-user"></span>
                    <label>My Profile</label>
                </div>
            </a>
            <a href="driver-lounge.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-driver-lounge');">
                <div>
                    <span class="glyphicon glyphicon-thumbs-up"></span>
                    <label>Lounge</label>
                </div>
            </a>
            <a href="../secure/contact-us.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-contact-us');">
                <div>
                    <span class="glyphicon glyphicon-earphone"></span>
                    <label>Contact Us</label>
                </div>
            </a>
            <a href="../secure/documents.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-doucments');">
                <div>
                    <span class="glyphicon glyphicon-folder-open"></span>
                    <label>Document Library</label>
                </div>
            </a>
            <a href="../secure/vacation.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-vacation');">
                <div>
                    <span class="glyphicon glyphicon-briefcase"></span>
                    <label>Vacation Requests</label>
                </div>
            </a>
            <a href="terminals.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-terminals');">
                <div>
                    <span class="glyphicon glyphicon-map-marker"></span>
                    <label>Terminals</label>
                </div>
            </a>
            <a href="lost-trailers.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-lost-trailers');">
                <div>
                    <span class="glyphicon glyphicon-question-sign"></span>
                    <label>Lost Trailers</label>
                </div>
            </a>
            <a href="../secure/w2.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-w2');">
                <div>
                    <span class="glyphicon glyphicon-ok-circle"></span>
                    <label>W2</label>
                </div>
            </a>
            <a href="../secure/1099.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'mobile-menu-more-1099');">
                <div>
                    <span class="glyphicon glyphicon-ok-sign"></span>
                    <label>1099</label>
                </div>
            </a>
            <div class="img-truck-shadow">
                <img src="../img/truck-inner-shadow-small.png" />
            </div>
        </div>
    </div>
</asp:Content>
