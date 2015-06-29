<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Simplification.aspx.vb" Inherits="secure_Simplification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-10 col-md-offset-1 margin-bottom30">
            <h2 class="label-color">
                <span>10/07/2014</span>
                <label class="hidden-xs">Owner Operator</label>
                Settlement 
            </h2>
            <hr />
            <table class="table table-striped table-shim table-celadon-colors">
                <thead>
                    <tr>
                        <th scope="col">Category</th>
                        <th scope="col">Description</th>
                        <th scope="col">Amount</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Revenue </td>
                        <td>Mileage - 1290004</td>
                        <td class="text-success">$883.80</td>
                        <td>$883.80</td>
                    </tr>
                    <tr>
                        <td>Revenue </td>
                        <td>Em Fuel Surcharge - 1290004</td>
                        <td class="text-success">$340.00</td>
                        <td>$1223.00</td>
                    </tr>
                    <tr>
                        <td>Reimbursements</td>
                        <td>Fuel Rebate</td>
                        <td class="text-success">$4.84</td>
                        <td>$1227.84</td>
                    </tr>
                    <tr>
                        <td>Weekly Payment</td>
                        <td>Atbs Tax Service</td>
                        <td class="text-danger">($37.54)</td>
                        <td>$1190.30</td>
                    </tr>
                    <tr>
                        <td>Weekly Payment</td>
                        <td>Qualcomm Weekly Fee</td>
                        <td class="text-danger">($28.00)</td>
                        <td>$1162.30</td>
                    </tr>
                    <tr>
                        <td>Charge Back</td>
                        <td>2290'S Heavy Highway</td>
                        <td class="text-danger">($50.00)</td>
                        <td>$1112.30</td>
                    </tr>
                    <tr>
                        <td>Advance</td>
                        <td>Payroll Advance</td>
                        <td class="text-danger">($103.00)</td>
                        <td>$1009.30</td>
                    </tr>
                </tbody>
            </table>
            <h4>Net $1009.30</h4>
        </div>
    </div>
        <div class="row no-print">
        <div class="col-md-12 text-center">
            <div>
                <asp:HyperLink ID="btnBackToSettlementList" runat="server" Text="Back to Settlement List" NavigateUrl="~/secure/ss-owner-operator.aspx" CssClass="btn-skin-default" />
            </div>
            <div class="top20">
                <asp:HyperLink ID="hlViewSourceSettlementSheet" runat="server" ToolTip="Click to see more detail" NavigateUrl="~/secure/ss-owner-operator-summary.aspx" Text="Click to see more detail" />
            </div>
        </div>
    </div>
</asp:Content>

