<%@ Page Title="Tip Calculator | Week 5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tip.aspx.cs" Inherits="Week5.tip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Tip Calculator</h1>

    <div class="form-group">
        <label for="txtAmount" class="control-label col-sm-2">Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required" CssClass="alert-danger" 
            ControlToValidate="txtAmount" Display="Dynamic">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="Invalid Input" ControlToValidate="txAmount" 
            CssClass="alert-danger" MaximumValue="99999999" MinimumValue="0.01" 
            Type="Currency" Display="Dynamic">
        </asp:RangeValidator>
    </div>
    <div class="form-group">
        <label for="ddlPercent" class="control-label col-sm-2">Tip %</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Value="-1" Text="-Choose-" />
            <asp:ListItem Value="0.1" Text="10%" />
            <asp:ListItem Value="0.15" Text="15%" />
            <asp:ListItem Value="0.2" Text="20%" />
        </asp:DropDownList>
        <asp:RangeValidator ID="RangeValidator2" runat="server"
            ErrorMessage="Tip % Required" CssClass="alert-danger" ControlToValidate="ddlPercent"
            Type="Double" MinimumValue="0" MaximumValue="0.2">
        </asp:RangeValidator>
    </div>
    <div class="row">
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" CssClass="btn btn-success col-sm-2" OnClick="btnCalculate_Click" />
    </div>
    <div class="row">
        <div class="col-md-2">
            Tip: <asp:Label ID="lblTip" runat="server" CssClass="alert alert-info" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-2">
            Total: <asp:Label ID="lblTotal" runat="server" CssClass="alert alert-info" />
        </div>
    </div>
</asp:Content>
