<%@ Page Title="Lounge" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="driver-lounge.aspx.vb" Inherits="public_driver_lounge" EnableViewState="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-md-offset-2">
            <h2 class="label-color">Driver Lounge</h2>
        </div>
    </div>

    <div class="row">
        <div id="content" class="col-xs-12 col-sm-6  col-md-5 col-md-offset-2 margin-bottom40">
            <asp:Panel ID="pnlTemp" runat="server" Visible="true">
                <a href="http://milemarker.celadontrucking.com/" target="_blank" onclick="ga('send', 'event', 'link', 'mile-marker-link');">
                    <h3 class="label-color"><span class="glyphicon glyphicon-book"></span>Driver Newsletter</h3>
                </a>

                <div class="margin-bottom30">
                    <a href="http://milemarker.celadontrucking.com/" target="_blank" onclick="ga('send', 'event', 'link', 'mile-marker-image-link');">
                        <img src="../img/mile-maker.png" /></a>
                    <h4>Celadon Driver's Magazine</h4>
                    <p>Check out our quarterly magazine geared toward what drivers want to know.</p>
                    <h4>Topics include:</h4>
                    <ul>
                        <li>Celadon Company News</li>
                        <li>Time Saving MLA Tool</li>
                        <li>Improve your Fuel Economy</li>
                        <li>Get to know the Terminals</li>
                    </ul>
                </div>
                <div class="margin-bottom30">
                    <h3 class="label-color"><span class="glyphicon glyphicon-cutlery"></span>Recipes on the Go</h3>
                    <ul>
                        <li><a href="../pdf/parfait.pdf" onclick="ga('send', 'event', 'link', 'download', 'pdf-breakfast-parfait');">
                            <img src="../img/icon-pdf.png" />Breakfast Parfait</a></li>
                        <li><a href="../pdf/pbj-english-muffin.pdf" onclick="ga('send', 'event', 'link', 'download', 'pdf-pbj-english-muffin');">
                            <img src="../img/icon-pdf.png" />PB and J English Muffin</a></li>
                        <li><a href="../pdf/microwave-scrambled-eggs.pdf" onclick="ga('send', 'event', 'link', 'download', 'pdf-microwaved-scrambled-eggs');">
                            <img src="../img/icon-pdf.png" />Microwaved Scrambled Eggs</a></li>
                        <li><a href="../pdf/microwave-poached-eggs.pdf" onclick="ga('send', 'event', 'link', 'download', 'pdf-microwaved-poached-eggs');">
                            <img src="../img/icon-pdf.png" />Microwaved Poached Eggs</a></li>
                        <li><a href="../pdf/quick-breakfast-tostado.pdf" onclick="ga('send', 'event', 'link', 'download', 'pdf-quick-breakfast-tostada');">
                            <img src="../img/icon-pdf.png" />Quick Breakfast Tostada</a></li>
                    </ul>
                </div>
                <div>

                    <h3 class="label-color"><span class="glyphicon glyphicon-heart-empty"></span>Over the Road Fitness</h3>
                    <a href="../pdf/daily-full-body-workout-10-minutes.pdf" onclick="ga('send', 'event', 'link', 'download', 'pdf-full-body-workout');">
                        <img src="../img/icon-pdf.png" />Daily Full Body Working in 10 Minutes</a>
                </div>

                <div class="panel panel-gray margin-top30 visible-md visible-lg">
                    <div class="panel-heading">
                        <h4 class="panel-title">Town Hall Meeting</h4>
                    </div>
                    <div class="panel-body">
                        <a href="https://web.telspan.com/play/celadon/1239-celadon-town-meeting-10-30-14" class="btn btn-action-celadon margin-left40 margin-bottom20" target="_blank">Town Hall Meeting Video</a>
                        <p>An hour long presentation summarizing the previous quarter results.</p>
                    </div>
                </div>
            </asp:Panel>
            <%--<div id="TwitterFeed" class="social-widget">
                <a class="twitter-timeline widget" href="https://twitter.com/Drive_Celadon" data-widget-id="482575243442020352">Tweets by @Drive_Celadon</a>
                <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https'; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = p + "://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
            </div>--%>
        </div>

        <div id="FacebookFeed" class="col-xs-12 col-sm-6 col-md-5 facebook-widget">
            <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2FCeladonTrucking&amp;width=275px&amp;height=600&amp;colorscheme=light&amp;show_faces=false&amp;header=false&amp;stream=true&amp;show_border=false" scrolling="no" frameborder="0" style="border: none; overflow: hidden; width: 275px; height: 600px;"></iframe>
        </div>
    </div>
</asp:Content>
