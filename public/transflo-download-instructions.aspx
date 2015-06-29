<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="transflo-download-instructions.aspx.vb" Inherits="public_transflo_download_instructions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h2 class="label-color">TRANSFLO Now® Downloading Instructions</h2>
            <hr />
            <ol>
                <li>Attach the scanner to PC/laptop & verify that it is working.</li>
                <li>Connect to the internet (via hardwire, cell card, or wifi).</li>
                <li>Download TRANSFLO Now software from the following web link:
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://transflonow.pegasustranstech.com/install/transflonowsetup.exe">https://transflonow.pegasustranstech.com/install/transflonowsetup.exe</asp:HyperLink>
                </li>
                <li>Follow onscreen installation instructions.</li>
                <li>Complete the "Registration Screen", entering your Fleetcode (CDNK), and driver email address, then press "Submit"(Note: Get the fleetcode from your internal company sources).</li>
                <li>Select "Setup" & "Select Scanner", & enter scanner information.</li>
                <li>You will shortly receive an "Activation Email"; click on the email link to complete your registration.</li>
            </ol>
            <h3 style="padding-top: 10px;">TRANSFLO Now® Scanning Instructions </h3>
            <ol>
                <li>Make sure you are connected to the web and click on the (TFN) icon to start the software.</li>
                <li>Place document in the scanner, and Press F1 to "Scan Documents".</li>
                <li>Press F1 a second time to "Start Scanner".</li>
                <li>When all pages have been scanned, use "Pg Up" & "Pg Down" to preview all the scanned document images.</li>
                <li>If the images are complete and legible, press F1 again to indicate "Scanning Complete" & that the Fleetcode displayed is accurate, press F1("Next") again to continue.</li>
                <li>Press F1 to view each document & if the images are acceptable, press F1 to "Submit Documents".</li>
            </ol>
            <div class="padding-top20"><b>All technical support and set-up questions are handled through Pegasus TransTech at 813-386-2327. </b></div>
        </div>
    </div>
</asp:Content>

