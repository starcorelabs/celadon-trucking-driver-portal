<%@ Page Title="FAQ" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="faq.aspx.vb" Inherits="public_faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h2 class="label-color">Frequently Asked Questions</h2>
            <hr />

            <p>Q: When I try and login in the screen flashes and clears my driver Id and password?</p>
            <p>A: This site requires cookies to be turned on / enabled. Cookies verify that you are the correct driver accessing your account.</p>

            <div class="bold">Mobile Phone:</div>

            <div>All mobile phones are different. Below are general guidelines for turning on cookies:</div>

            <div class="label-color bold space">Andriod</div>
            <ol>
                <li>Open your web browser</li>
                <li>Hit the menu button</li>
                <li>Go the the more or settings option</li>
                <li>Privacy or security settings</li>
                <li>Make sure you enable cookies</li>
            </ol>

            <div class="label-color bold">iPhone</div>
            <ol>
                <li>Settings</li>
                <li>Safari</li>
                <li>Privacy</li>
                <li>Accept Cookies</li>
            </ol>

            <p>If you are not comfortable enabling your cookies please contact the store where you purchased your phone.</p>
            <p>Ask them to walk you through how to turn on cookies.</p>

            <div class="bold space">Desktop Computer:</div>
            <p>Have you tried using a different web browser? </p>
            <p>Websites often work better in other browsers. Download another browser. Below are the two most popular:</p>

            <ul>
                <li><a href="https://support.google.com/chrome/answer/95346?hl=en" target="_blank">Google Chrome</a></li>
                <li><a href="http://www.mozilla.org/en-US/firefox/all/" target="_blank">FireFox</a></li>
            </ul>

            <p>Q: Why does the login screen look strange?</p>
            <p>A: This site requires Internet explorer 9 or greater. You can use Google Chrome or Mozilla Firefox and the site will look normal.</p>

            <p>Q: Still have questions? </p>
            <p class="mg-bottom-20">A: <a href="unanswered-question.aspx" onclick="ga('send', 'event', 'button', 'navigation', 'unanswered-questions');">Yes!</a></p>
        </div>
    </div>
</asp:Content>

