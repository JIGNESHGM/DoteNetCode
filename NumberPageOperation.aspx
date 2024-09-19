<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumberPageOperation.aspx.cs" Inherits="ValidationCantroleDemo.NumberPageOperation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Number Operations</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        /* Additional custom styles */
        body {
            background-color: #f4f4f4;
        }

        .container {
            margin-top: 50px;
            background-color: white;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .result-box input {
            background-color: #f8f9fa;
            color: #495057;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .validation-summary {
            color: red;
            padding: 10px;
            background-color: #ffe5e5;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <!-- Single Digit Operation Section -->
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center">Single Digit Operation</h4>

                            <asp:ValidationSummary ID="ValidationSummarySingle" runat="server" CssClass="validation-summary" ShowMessageBox="true" HeaderText="Validation Errors:" ValidationGroup="SingleDigit" />

                            <div class="form-group">
                                <asp:Label ID="lblSingleDigitNumber" runat="server" Text="Enter a Number:" CssClass="form-label" />
                                <asp:TextBox ID="txtSingleDigitNumber" runat="server" CssClass="form-control" TextMode="Number" />
                                <asp:RequiredFieldValidator ID="rfvSingleDigitNumber" runat="server" ControlToValidate="txtSingleDigitNumber" ErrorMessage="Number is required" ForeColor="Red" ValidationGroup="SingleDigit" CssClass="text-danger" />
                                <asp:RegularExpressionValidator ID="revSingleDigit" runat="server" ControlToValidate="txtSingleDigitNumber" ErrorMessage="Please enter a valid integer" ValidationExpression="^-?\d+$" ForeColor="Red" ValidationGroup="SingleDigit" CssClass="text-danger" />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblSingleDigitOperation" runat="server" Text="Select Operation:" CssClass="form-label" />
                                <asp:DropDownList ID="ddlSingleDigitOperation" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="1" Text="Odd/Even" />
                                    <asp:ListItem Value="2" Text="Positive/Negative" />
                                    <asp:ListItem Value="3" Text="Factorial" />
                                </asp:DropDownList>
                            </div>

                            <asp:Button ID="btnSingleDigitOperation" runat="server" Text="Submit" CssClass="btn btn-success btn-block" OnClick="btnSingleDigitOperation_Click" ValidationGroup="SingleDigit" />

                            <div class="result-box mt-3">
                                <asp:TextBox ID="txtSingleDigitAnswer" runat="server" ReadOnly="true" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Double Digit Operation Section -->
                <div class="col-md-6 mb-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center">Double Digit Operation</h4>

                            <asp:ValidationSummary ID="ValidationSummaryDouble" runat="server" CssClass="validation-summary" ShowMessageBox="true" HeaderText="Validation Errors:" ValidationGroup="DoubleDigit" />

                            <div class="form-group">
                                <asp:Label ID="lblFirstNumber" runat="server" Text="Enter First Number:" CssClass="form-label" />
                                <asp:TextBox ID="txtFirstNumber" runat="server" CssClass="form-control" TextMode="Number" />
                                <asp:RequiredFieldValidator ID="rfvFirstNumber" runat="server" ControlToValidate="txtFirstNumber" ErrorMessage="First number is required" ForeColor="Red" ValidationGroup="DoubleDigit" CssClass="text-danger" />
                                <asp:RegularExpressionValidator ID="revFirstNumber" runat="server" ControlToValidate="txtFirstNumber" ErrorMessage="Please enter a valid long integer" ValidationExpression="^-?\d{1,18}$" ForeColor="Red" ValidationGroup="DoubleDigit" CssClass="text-danger" />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblSecondNumber" runat="server" Text="Enter Second Number:" CssClass="form-label" />
                                <asp:TextBox ID="txtSecondNumber" runat="server" CssClass="form-control" TextMode="Number" />
                                <asp:RequiredFieldValidator ID="rfvSecondNumber" runat="server" ControlToValidate="txtSecondNumber" ErrorMessage="Second number is required" ForeColor="Red" ValidationGroup="DoubleDigit" CssClass="text-danger" />
                                <asp:RegularExpressionValidator ID="revSecondNumber" runat="server" ControlToValidate="txtSecondNumber" ErrorMessage="Please enter a valid long integer" ValidationExpression="^-?\d{1,18}$" ForeColor="Red" ValidationGroup="DoubleDigit" CssClass="text-danger" />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblDoubleDigitOperation" runat="server" Text="Select Operation:" CssClass="form-label" />
                                <asp:DropDownList ID="ddlDoubleDigitOperation" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="1" Text="Addition" />
                                    <asp:ListItem Value="2" Text="Subtraction" />
                                    <asp:ListItem Value="3" Text="Division" />
                                    <asp:ListItem Value="4" Text="Multiplication" />
                                    <asp:ListItem Value="5" Text="Minimum" />
                                    <asp:ListItem Value="6" Text="Maximum" />
                                    <asp:ListItem Value="7" Text="Equals" />
                                </asp:DropDownList>
                            </div>

                            <asp:Button ID="btnDoubleDigitOperation" runat="server" Text="Submit" CssClass="btn btn-success btn-block" OnClick="btnDoubleDigitOperation_Click" ValidationGroup="DoubleDigit" />

                            <div class="result-box mt-3">
                                <asp:TextBox ID="txtDoubleDigitAnswer" runat="server" ReadOnly="true" CssClass="form-control" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Add Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
