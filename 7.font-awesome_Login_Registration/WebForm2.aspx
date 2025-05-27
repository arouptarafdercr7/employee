<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_7.font_awesome_Login_Registration.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Create New Employee
    </button>
    <br />

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered"></asp:GridView>


    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
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
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary" OnClick="btnSave_Click" />
                </div>

            </div>
        </div>
    </div>

    <asp:Literal ID="Literal1" runat="server"></asp:Literal>

</asp:Content>

