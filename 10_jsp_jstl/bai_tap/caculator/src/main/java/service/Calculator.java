package service;

import unit.MyException;

public class Calculator {
    public double calculate(double number1, double number2, String operator) throws MyException {
        double result = 0;
        if (operator.equals("*")){
            result = number1 * number2;
        }else if(operator.equals("/")){
            if (number2 != 0){
                result = number1 / number2;
            } else {
                throw new MyException("An exception occurred: / by zero ");
            }
        }else if(operator.equals("+")){
            result = number1 + number2;
        }else if(operator.equals("-")){
            result = number1 - number2;
        }
        return result;
    }
}
