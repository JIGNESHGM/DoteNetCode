using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Web;

namespace ValidationCantroleDemo.BAL
{
    public class DoubleDigitOperationBAL
    {
        public string PerformOperation(double firstNumber, double secondNumber, int operation)
        {
            switch (operation)
            {
                case 1:
                    return (firstNumber + secondNumber).ToString(); // Addition
                case 2:
                    return (firstNumber - secondNumber).ToString(); // Subtraction
                case 3:
                    return secondNumber != 0 ? (firstNumber / secondNumber).ToString() : "Cannot divide by zero"; // Division
                case 4:
                    return (firstNumber * secondNumber).ToString(); // Multiplication
                case 5:
                    return Math.Min(firstNumber, secondNumber).ToString(); // Minimum
                case 6:
                    return Math.Max(firstNumber, secondNumber).ToString(); // Maximum
                case 7:
                    return firstNumber == secondNumber ? "Equal" : "Not Equal"; // Equality check
                default:
                    return "Invalid operation.";
            }
        }
    }
}