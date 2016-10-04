<%@ Page Title="Tip Calculator | Week 4" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tip.aspx.cs" Inherits="Week5.tip" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Tip Calculator</h1>

    <div class="form-group">
        <label for="txtAmount" class="control-label col-sm-2">Amount:</label>
        <asp:TextBox ID="txtAmount" runat="server" />
    </div>
    <div class="form-group">
        <label for="ddlPercent" class="control-label col-sm-2">Tip %</label>
        <asp:DropDownList ID="ddlPercent" runat="server">
            <asp:ListItem Value="0.1" Text="10%" />
            <asp:ListItem Value="0.15" Text="15%" />
            <asp:ListItem Value="0.2" Text="20%" />
        </asp:DropDownList>
    </div>
    <div>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" CssClass="btn btn-success col-sm-2" OnClick="btnCalculate_Click" />
    </div>
    <div>
        Tip: <asp:Label ID="lblTip" runat="server" CssClass="alert alert-info" />
    </div>
    <div>
        Total: <asp:Label ID="lblTotal" runat="server" CssClass="alert alert-info" />
    </div>
</asp:Content>
