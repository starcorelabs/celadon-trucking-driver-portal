<%@ Page Title="Documents" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="documents.aspx.vb" Inherits="secure_documents" EnableViewState="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/master-style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 margin-bottom30">
            <asp:Panel runat="server" ID="pnlDocumentMessage" SkinID="pnlDocumentMessage">
                <div>
                    <h2 class="label-color">No Documents</h2>
                    <p>There are no documents to display. Please contact your local manager regarding any document requests.</p>
                </div>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlDocuments" SkinID="pnlDocuments">
                <h2 class="label-color">Document Library</h2>
                <div class="panel panel-standard">
                    <div class="panel-heading">
                        <h3 class="panel-title">Medical Information</h3>
                    </div>
                    <div class="panel-body">
                        <div>
                            <h4><a href="../pdf/medical-release-form.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'pdf-medical-release-form');">
                                <img src="../img/icon-pdf.png" class="icon-pdf-space" />
                                Medical Release Form</a></h4>
                            <p>For drivers who have had a recent illness or injury, you must provide Celadon with a release from your treating physician(s).</p>
                        </div>
                        <%--This section is commented out because Kelsie said the document is not ready yet.--%>
                        <%--                                <div>
                                    <h4><a href="#" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'pdf-simple-wellness-program');">
                                        <img src="../img/icon-pdf.png" class="icon-pdf-space" />
                                        Simply Wellness Program</a></h4>
                                    <p>Download this sheet to learn how your improved fitness can turn into a pay bonus at the end of four quarters.</p>
                                </div>--%>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="panel panel-standard">
                        <div class="panel-heading">
                            <h3 class="panel-title">Driver Reference</h3>
                        </div>
                        <div class="panel-body">
                            <div>
                                <h4><a href="../pdf/safety-section-of-driver-handbook.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'pdf-safety-manual');">
                                    <img src="../img/icon-pdf.png" class="icon-pdf-space" />Safety Handbook</a></h4>
                                <p>Chapter 9 Safety Policy from your Road to Success employee handbook.</p>
                            </div>
                            <div>
                                <h4><a href="../pdf/right-weight-scale-instructions.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'pdf-right-weight-scale');">
                                    <img src="../img/icon-pdf.png" class="icon-pdf-space" />Right Weigh Scale Instructions</a></h4>
                                <p>Right Weigh Scale units have been installed on trailers to reduce the need for stopping at scales to weigh loads.  This link provides instructions for use and an example for calculating weights.</p>
                            </div>

                            <div>
                                <h4 class="label-color"><a href="http://www.truckersb2b.com/Default.aspx?TabID=582" target="_blank" onclick="ga('send', 'event', 'link', 'navigation', 'open-road-driver-plan-app');">Open Road Drivers Plan Application</a></h4>
                                <p>Since 1989, the Open Road Drivers Plan® has helped commercial truck drivers protect their driving records. </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="panel panel-standard">
                        <div class="panel-heading">
                            <h3 class="panel-title">Transflo ID: CDNK</h3>
                        </div>
                        <div class="panel-body">
                            <div style="text-align: center;">
                                <asp:HyperLink ID="HyperLink1" NavigateUrl="http://www.transfloexpress.com" runat="server"><img alt="Transflow logo" src="http://www.transfloexpress.com/wp-content/themes/transflo2011/images/tfx-logo.jpg" /></asp:HyperLink>
                                <p>Celadon is now offering the services of TRANSFLO Now!</p>
                            </div>
                            <div>
                                <p>
                                    Celadon Trucking has implemented a new Scan Anywhere/Anytime solution from Pegasus TransTech called TRANSFLO Now! This service allows Celadon drivers to scan their delivery documents from the cab of their truck, their home office or any remote location using a laptop or PC and a wide variety of scanning devices.
                                </p>
                                <p>
                                    TRANSFLO Now! Offers the convenience to scan without stopping at a truck stop. The software is free to drivers to download. Documents are delivered to Celadon just as if they had been scanned at a truck stop. Drivers receive an email confirmation number and can view delivered documents at
                                        <asp:HyperLink ID="hlTransfloExpress" runat="server" NavigateUrl="http://www.transfloexpress.com">transfloexpress.com</asp:HyperLink>.
                                </p>
                                <p>
                                    Click
                                        <asp:HyperLink ID="hlTransfloExpressDownload" runat="server" onclclick="ga('send', 'event', 'link', 'navigate', 'ss-transflow');" NavigateUrl="https://transflonow.pegasustranstech.com/install/transflonowsetup.exe">here</asp:HyperLink>
                                    to download software. View downloading software and scanning instructions by clicking
                                        <asp:HyperLink ID="hlDownloadInstructions" NavigateUrl="~/public/transflo-download-instructions.aspx" runat="server">here</asp:HyperLink>.
                                </p>
                                <p>
                                    All technical support and set-up questions are handled through Pegasus TransTech at 813-386-2327.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="panel panel-standard">
                        <div class="panel-heading">
                            <h3 class="panel-title">Benefits</h3>
                        </div>
                        <div class="panel-body">
                            <div>
                                <h4 class="label-color"><a href="../pdf/tobacco-affidavit.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'tobacco-affidavit');">
                                    <img src="../img/icon-pdf.png" class="icon-pdf-space" />Tobacco Affidavit</a></h4>
                                <p>This form is used to determine your premium rate. You must sign and return this completed form to Benefits Enrollment by 12/16/2014.</p>
                            </div>

                            <div>
                                <h4 class="label-color"><a href="../pdf/spousal-affidavit.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'spousal-affidavit');">
                                    <img src="../img/icon-pdf.png" class="icon-pdf-space" />Spousal Affidavit</a></h4>
                                <p>This form must be completed if you are adding coverage or electing to enroll your spouse in medical benefits. You  must sign and return this completed form to Benefits Enrollment by 12/16/2014.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="panel panel-standard">
                        <div class="panel-heading">
                            <h3 class="panel-title">Taxes</h3>
                        </div>
                        <div class="panel-body">
                            <h4 class="label-color"><a href="http://www.irs.gov/pub/irs-pdf/fw4.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'pdf-W4');">
                                <img src="../img/icon-pdf.png" class="icon-pdf-space" />W4</a></h4>
                            <p>The Form W-4 is used by employers to determine the amount of tax withholding to deduct from employees' wages.</p>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="panel panel-standard">
                        <div class="panel-heading">
                            <h3 class="panel-title">Payroll</h3>
                        </div>
                        <div class="panel-body">
                            <h4 class="label-color"><a href="../pdf/direct-deposit-form.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'direct-deposit-form');">
                                <img src="../img/icon-pdf.png" class="icon-pdf-space" />Direct Deposit Application for Comdata </a></h4>
                            <p>The direct deposit form is used to change the bank account your Comdata is deposited to.</p>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="panel panel-standard">

                        <div class="panel-heading">
                            <h3 class="panel-title">IKEA IWAY</h3>
                        </div>

                        <div class="panel-body">

                            <div>
                                <h4 class="label-color"><a href="../pdf/ikea-iway-standard.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'pdf-W4');">
                                    <img src="../img/icon-pdf.png" class="icon-pdf-space" />IKEA IWAY Standard</a></h4>
                                <p>
                                    The IKEA Way on Purchasing Products, Materials and Services (IWAY) is the IKEA Group Supplier Code of Conduct.
                                </p>
                            </div>

                            <div>
                                <h4 class="label-color"><a href="../pdf/ikea-iway-standard-transport.pdf" target="_blank" onclick="ga('send', 'event', 'link', 'download', 'pdf-W4');">
                                    <img src="../img/icon-pdf.png" class="icon-pdf-space" />IKEA IWAY Standard Transport</a></h4>
                                <p>This document describes IKEA Transport requirements for all services.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>