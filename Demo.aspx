<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="ValidationCantroleDemo.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="vlsRegistration" runat="server" DisplayMode="BulletList" ShowMessageBox="true" BorderColor="Navy" BorderWidth="2px" BorderStyle="Solid" ForeColor="Red" HeaderText="Errors" />
        </div> 
        <div>
            <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="txtName" />
            <asp:TextBox ID="txtName" runat="server" />
            <asp:RequiredFieldValidator ID="rfdName" Text="(*)Required" ErrorMessage="Invalid Name" ForeColor="Red" runat="server" ControlToValidate="txtName" />
        </div>
        <div>
            <asp:Label ID="lblAge" runat="server" Text="Age" />
            <asp:TextBox ID="txtAge" runat="server" />
            <asp:RequiredFieldValidator ID="rfdAge" Text="(*)Required" ErrorMessage="Invalid NaAgeme" ForeColor="Red" runat="server" Display="Dynamic" ControlToValidate="txtAge" />
            <asp:RangeValidator ID="rnvAge" ControlToValidate="txtAge" runat="server" MinimumValue="18" MaximumValue="100" Type="Integer" ErrorMessage="Invalid Age" ForeColor="Red" Display="Dynamic" />
        </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" Text="Password" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="rfvPassword" ErrorMessage="Password Requred" ControlToValidate="txtPassword" ForeColor="Red" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblConformPassword" runat="server" Text="Conform Password" />
            <asp:TextBox ID="txtConformPassword" runat="server" TextMode="Password" />
            <asp:RequiredFieldValidator ID="rfvConformPassword" runat="server" ErrorMessage="Confrom Password Reqred" ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic" />
            <asp:CompareValidator ID="cmpConfromPassword" runat="server" ErrorMessage="Password And Conform Password Should be Same" ControlToCompare="txtPassword" ControlToValidate="txtConformPassword" Operator="Equal" ForeColor="Red" Type="String" Display="Dynamic" />
        </div>
        <div>
            <asp:Label ID="lblDepartment" runat="server" Text="Department" />
            <asp:TextBox ID="txtDepartment" runat="server" />
            <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" ErrorMessage="Department Requred" ControlToValidate="txtDepartment" Display="Dynamic" ForeColor="Red" />
            <asp:RegularExpressionValidator ID="revDepartment" runat="server" ControlToValidate="txtDepartment" ErrorMessage="Invalid Department" ValidationExpression="^24([A-Z]|[a-z]){3}\d{3}" Display="Dynamic" ForeColor="Red"/>
        </div>
        <div>
            <asp:Label ID="lblAddress" runat="server" Text="Address" />
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" />
            <asp:CustomValidator runat="server" ForeColor="Red" Text="Invalid Address" OnServerValidate="Unnamed_ServerValidate" ErrorMessage="Invalid Address" ValidateEmptyText="true" ControlToValidate="txtAddress" />
        </div>
        <div>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblOutput" runat="server" />
        </div>
    </form>
</body>
</html>
