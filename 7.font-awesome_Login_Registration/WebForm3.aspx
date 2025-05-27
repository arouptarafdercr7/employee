<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="_7.font_awesome_Login_Registration.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Form Design--%>
    <div class="form-group">
        <div class="form-group">
            <label for="exampleInputEmail1">Id Number</label>
            <asp:TextBox ID="txtId" runat="server" class="form-control" placeholder="Employee Id"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Name</label>
            <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Employee Name"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Salary</label>
            <asp:TextBox ID="txtSalary" runat="server" class="form-control" placeholder="Employee Salary"></asp:TextBox>
        </div>
    </div>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />&nbsp;&nbsp;
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>
