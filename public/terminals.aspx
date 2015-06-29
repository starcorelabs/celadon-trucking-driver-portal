<%@ Page Title="Terminals" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="terminals.aspx.vb" Inherits="public_terminals" EnableViewState="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="label-color">Celadon Terminal Locations</h3>
            <asp:Panel runat="server" ID="terminalMap" SkinID="terminalMap">
                <iframe src="google-terminal-map.html" style="width: 630px; height: 520px;" class="visible-lg visible-md visible-sm"></iframe>
            </asp:Panel>

            <div class="row">
                <asp:Panel runat="server" ID="pnlUSATerminals" CssClass="col-xs-12 col-sm-12 col-md-4" SkinID="pnlUSATerminals">

                    <p class="RegionColumnHeader">United States Terminals</p>
                    <div class="padding-bottom20">
                        330 Mid State Truck Plaza<br />
                        North Little Rock, AR 72117<br />
                        <a href="tel:+18882023569">888.202.3569</a>
                    </div>

                    <div class="padding-bottom20">
                        15200 S. Jonesville Rd #1<br />
                        Columbus, IN 47201<br />
                        <a href="tel:+18004563388">800.456.3388</a>
                    </div>

                    <div class="padding-bottom20">
                        2847 E. 600 S.<br />
                        Warren, IN 78045<br />
                        <a href="tel:+12603753810">260.375.3810</a>
                    </div>

                    <div class="padding-bottom20">
                        790 Commerce Pky W. Dr.<br />
                        Greenwood, IN 46143<br />
                        <a href="tel:+18887361934">888.736.1934</a>
                    </div>

                    <div class="padding-bottom20">
                        4416 Groometown Rd.<br />
                        Greensboro, NC 27407<br />
                        <a href="tel:+18009967171">800.996.7171</a>
                    </div>

                    <div class="padding-bottom20">
                        7301 US Hwy 301 N.<br />
                        Battleboro, NC 27809<br />
                        <a href="tel:+12529778888">252.977.8888</a>
                    </div>

                    <div class="padding-bottom20">
                        2499 Mcgaw Road<br />
                        Obetz, OH 43207<br />
                        <a href="tel:+18005231111">800.523.1111</a>
                    </div>

                    <div class="padding-bottom20">
                        1711 Shearer Dr.<br />
                        Carlisle, PA 17013<br />
                        <a href="tel:+18004318450">800.431.8450</a>
                    </div>

                    <div class="padding-bottom20">
                        46 S. Hunter Hwy<br />
                        Drums, PA 18222<br />
                        <a href="tel:+15707887060">570.788.7060</a>
                    </div>

                    <div class="padding-bottom20">
                        5651 S. National Dr.<br />
                        Knoxville, TN 37914<br />
                        <a href="tel:+18009563846">800.956.3846</a>
                    </div>

                    <div class="padding-bottom20">
                        8401 Killam Industrial Blvd.<br />
                        Laredo, TX 78045<br />
                        <a href="tel:+18007356730">800.735.6730</a>
                    </div>

                    <div class="padding-bottom20">
                        200 Darrington Rd.<br />
                        El Paso, TX 79928<br />
                        <a href="tel:+18007356732">800.735.6732</a>
                    </div>

                    <div class="padding-bottom20">
                        7240 N. Interstate Hwy 35 E.<br />
                        Waxahachie, TX 75165<br />
                        <a href="tel:+18663698001">866.369.8001</a>
                    </div>

                    <div class="padding-bottom20">
                        101 W. Venture Dr.<br />
                        Janesville, WI<br />
                        <a href="tel:+16087431333">608.743.1333</a>
                    </div>

                    <div class="padding-bottom20">
                        5600 Midlothian Turnpike<br />
                        Richmond, VA 23225<br />
                        <a href="tel:+18002312697">800.231.2697</a>
                    </div>

                    <div class="padding-bottom20">
                        2501 60th St.<br />
                        Hampton, VA 23661<br />
                        <a href="tel:+18003471037">800.347.1037</a>
                    </div>
                </asp:Panel>

                <asp:Panel runat="server" ID="pnlMexicoTerminals" class="col-xs-12 col-sm-12 col-md-4" SkinID="pnlMexicoTerminals">
                    <p class="RegionColumnHeader">Mexico Terminals</p>
                    <div class="padding-bottom20">
                        Monterrey
                    <br />
                        Carretera a Monclova KM 5<br />
                        Colonia Andres Caballero<br />
                        Escobedo, Nuevo Leon,<br />
                        C.P.33635<br />
                        <a href="tel:+528182861150">52.818.286.1150</a><br />
                        <a href="tel:+18002365248">1.800.236.5248</a>
                    </div>

                    <div class="padding-bottom20">
                        Guadalajara<br />
                        <a href="tel:+523336051805">52.333.605.1805</a>
                    </div>

                    <div class="padding-bottom20">
                        Nuevo Laredo<br />
                        <a href="tel:+528678900200">52.867.890.0200</a>
                    </div>

                    <div class="padding-bottom20">
                        Puebla<br />
                        <a href="tel:+522222855073">52.222.285.5073</a>
                    </div>


                    <div class="padding-bottom20">
                        Querétaro<br />
                        <a href="tel:+524423681500">52.442.368.1500</a>
                    </div>

                    <div class="padding-bottom20">
                        San Luis Potsi<br />
                        <a href="tel:+524447997268">52.444.799.7268</a>
                    </div>

                    <div class="padding-bottom20">
                        Tepotzotlán<br />
                        <a href="tel:+15522290364">01.552.229.0364</a>
                    </div>


                    <div class="contactUs">
                        <div class="padding-bottom20">
                            Tlalnepantla<br />
                            <a href="tel:+525557180099">52.555.718.0099</a>
                        </div>

                    </div>

                </asp:Panel>

                <asp:Panel runat="server" ID="pnlCanadaTerminals" class="col-xs-12 col-sm-12 col-md-4" SkinID="pnlCanadaTerminals">
                    <p class="RegionColumnHeader">Canada Terminals</p>
                    <div class="padding-bottom20">
                        280 Shoemaker St.<br />
                        Kitchener, ON N2E 3EI<br />
                        <a href="tel:+18002656467">800.265.6467</a>
                    </div>

                    <div class="padding-bottom20">
                        1001 Belmore Line<br />
                        Wroxeter, ON N0G 2X0<br />
                        <a href="tel:+15193353575">519.335.3575</a>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
