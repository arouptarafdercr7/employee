<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EditEMP.aspx.cs" Inherits="_7.font_awesome_Login_Registration.EditEMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="txtId">Id Number</label>
            <div class="controls">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="txtName">Name</label>
            <div class="controls">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="txtSalary">Salary</label>
            <div class="controls">
                <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <asp:LinkButton ID="btnUpdate" CssClass="far fa-save fa fa-2x" runat="server" OnClick="btnUpdate_Click">Update</asp:LinkButton>
            </div>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
    </div>
</asp:Content>

