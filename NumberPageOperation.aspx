<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumberPageOperation.aspx.cs" Inherits="ValidationCantroleDemo.NumberPageOperation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Number Operations</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            width: 70%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            display: flex;
            justify-content: space-between;
        }

        .operation-box {
            width: 45%;
            padding: 20px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            background-color: #fff;
        }

        h2 {
            text-align: center;
        }

        label, select, input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }

        input[type="text"], select {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
        }

        .submit-btn:hover {
            background-color: #218838;
        }

        .result-box input {
            background-color: #f8f9fa;
            color: #495057;
        }

        .validation-summary {
            color: red;
            border: 1px solid red;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Single Digit Operation Section -->
            <div class="operation-box">
                <h2>Single Digit Operation</h2>

                <asp:ValidationSummary ID="ValidationSummarySingle" runat="server" CssClass="validation-summary" ShowMessageBox="true" HeaderText="Validation Errors:" ValidationGroup="SingleDigit" />

                <asp:Label ID="lblSingleDigitNumber" runat="server" Text="Enter Single Digit Number:" />
                <asp:TextBox ID="txtSingleDigitNumber" runat="server" TextMode="Number" />
                <asp:RequiredFieldValidator ID="rfvSingleDigitNumber" runat="server" ControlToValidate="txtSingleDigitNumber" ErrorMessage="Single digit number is required" ForeColor="Red" ValidationGroup="SingleDigit" />
                <asp:RangeValidator ID="rvSingleDigit" runat="server" ControlToValidate="txtSingleDigitNumber" MinimumValue="0" MaximumValue="9" Type="Integer" ErrorMessage="Please enter a valid single digit number" ForeColor="Red" ValidationGroup="SingleDigit" />

                <asp:Label ID="lblSingleDigitOperation" runat="server" Text="Select Operation:" />
                <asp:DropDownList ID="ddlSingleDigitOperation" runat="server">
                    <asp:ListItem Value="1" Text="Odd/Even" />
                    <asp:ListItem Value="2" Text="Positive/Negative" />
                    <asp:ListItem Value="3" Text="Factorial" />
                </asp:DropDownList>

                <asp:Button ID="btnSingleDigitOperation" runat="server" Text="Submit" CssClass="submit-btn" OnClick="btnSingleDigitOperation_Click" ValidationGroup="SingleDigit" />

                <div class="result-box">
                    <asp:TextBox ID="txtSingleDigitAnswer" runat="server" ReadOnly="true" />
                </div>
            </div>

            <!-- Double Digit Operation Section -->
            <div class="operation-box">
                <h2>Double Digit Operation</h2>

                <asp:ValidationSummary ID="ValidationSummaryDouble" runat="server" CssClass="validation-summary" ShowMessageBox="true" HeaderText="Validation Errors:" ValidationGroup="DoubleDigit" />

                <asp:Label ID="lblFirstNumber" runat="server" Text="Enter First Number:" />
                <asp:TextBox ID="txtFirstNumber" runat="server" TextMode="Number" />
                <asp:RequiredFieldValidator ID="rfvFirstNumber" runat="server" ControlToValidate="txtFirstNumber" ErrorMessage="First number is required" ForeColor="Red" ValidationGroup="DoubleDigit" />

                <asp:Label ID="lblSecondNumber" runat="server" Text="Enter Second Number:" />
                <asp:TextBox ID="txtSecondNumber" runat="server" TextMode="Number" />
                <asp:RequiredFieldValidator ID="rfvSecondNumber" runat="server" ControlToValidate="txtSecondNumber" ErrorMessage="Second number is required" ForeColor="Red" ValidationGroup="DoubleDigit" />

                <asp:Label ID="lblDoubleDigitOperation" runat="server" Text="Select Operation:" />
                <asp:DropDownList ID="ddlDoubleDigitOperation" runat="server">
                    <asp:ListItem Value="1" Text="Addition" />
                    <asp:ListItem Value="2" Text="Subtraction" />
                    <asp:ListItem Value="3" Text="Division" />
                    <asp:ListItem Value="4" Text="Multiplication" />
                    <asp:ListItem Value="5" Text="Minimum" />
                    <asp:ListItem Value="6" Text="Maximum" />
                    <asp:ListItem Value="7" Text="Equals" />
                </asp:DropDownList>

                <asp:Button ID="btnDoubleDigitOperation" runat="server" Text="Submit" CssClass="submit-btn" OnClick="btnDoubleDigitOperation_Click" ValidationGroup="DoubleDigit" />

                <div class="result-box">
                    <asp:TextBox ID="txtDoubleDigitAnswer" runat="server" ReadOnly="true" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>