using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Numerics;


namespace ValidationCantroleDemo.BAL
{
    public class SingleDigitOperationBAL
    {
        public string PerformOperation(long number, int operation)
        {
            if (operation == 1) // Odd and Even check
            {
                return number % 2 == 0 ? "Even" : "Odd";
            }
            else if (operation == 2) // Positive or Negative check
            {
                return number >= 0 ? "Positive" : "Negative";
            }
            else if (operation == 3) // Factorial (using long)
            {
                return Factorial(number).ToString();
            }
            return "Invalid operation.";
        }

        private long Factorial(long number)
        {
            if (number == 0) return 1;
            long result = 1;
            for (long i = 1; i <= number; i++)
            {
                result *= i;
            }
            return result;
        }
    }
}