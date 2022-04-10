public inherited sharing class Calculator {
    //Perform addition of 2 numbers
    public static Double addition(Double num1, Double num2){
        calculatorServices.CalculatorImplPort calculator = 
    		new calculatorServices.CalculatorImplPort();
        return calculator.doAdd(num1, num2);
    }
    
    //Perform multiplication of 2 numbers
    public static Double multiply(Double num1, Double num2){
        calculatorServices.CalculatorImplPort calculator = 
    		new calculatorServices.CalculatorImplPort();
        return calculator.doMultiply(num1, num2);
    }
    
    //Perform subtraction of 2 numbers
    public static Double subtract(Double num1, Double num2){
        calculatorServices.CalculatorImplPort calculator = 
    		new calculatorServices.CalculatorImplPort();
        return calculator.doSubtract(num1, num2);
    }
    
    //Perform division of 2 numbers
    public static Double divide(Double num1, Double num2){
        calculatorServices.CalculatorImplPort calculator = 
    		new calculatorServices.CalculatorImplPort();
        return calculator.doDivide(num1, num2);
    }
}