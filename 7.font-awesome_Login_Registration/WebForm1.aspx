<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_7.font_awesome_Login_Registration.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Home</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id Number" />
                <asp:BoundField DataField="Name" HeaderText="Employee Name" />
                <asp:BoundField DataField="Salary" DataFormatString="{0:.00}" HeaderText="Monthly Salary" />
                <asp:TemplateField HeaderText="...">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Id", "EditEmp.aspx?p={0}") %>' Text="" ToolTip="Edit"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle CssClass="fa fa-edit fa-2x" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="...">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("Id", "DeleteEMP.aspx?p={0}") %>' Text="" ToolTip="Delete"></asp:HyperLink>
                    </ItemTemplate>
                    <ControlStyle CssClass="fa fa-trash fa-2x" />
                </asp:TemplateField>


                <%-- "DeleteEMP.aspx?p={0}" Question mark er pore jei variable thake
                    take QueryString bole.ekhane p hocche QueryString--%>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>


