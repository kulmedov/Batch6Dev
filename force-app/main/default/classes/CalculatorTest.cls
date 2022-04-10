@isTest
public inherited sharing class CalculatorTest {
	@isTest
    public static void additionTest(){
        Test.setMock(WebServiceMock.class, new CalculatorMockAddition());
        
        Double num1 = 1.0;
        Double num2 = 2.0;
        
        Test.startTest();
        Double result = Calculator.addition(num1, num2);
        Test.stopTest();
        
        Double expectedNum = 3.0;
        
        System.assertEquals(expectedNum, result, 'The result should be 3.0');
    }
    
    @isTest
    public static void subtractionTest(){
        Test.setMock(WebServiceMock.class, new CalculatorMockSubtraction());
        
        Double num1 = 13.0;
        Double num2 = 10.0;
        
        Test.startTest();
        Double result = Calculator.subtract(num1, num2);
        Test.stopTest();
        
        Double expectedNum = 3.0;
        
        System.assertEquals(expectedNum, result, 'The result should be 3.0');
    }
    
    @isTest
    public static void divisionTest(){
        Test.setMock(WebServiceMock.class, new CalculatorMockDivision());
        
        Double num1 = 150.0;
        Double num2 = 10.0;
        
        Test.startTest();
        Double result = Calculator.divide(num1, num2);
        Test.stopTest();
        
        Double expectedNum = 15.0;
        
        System.assertEquals(expectedNum, result, 'The result should be 15.0');
    }
    
    @isTest
    public static void multiplicationTest(){
        Test.setMock(WebServiceMock.class, new CalculatorMockMultiplication());
        
        Double num1 = 5.0;
        Double num2 = 3.0;
        
        Test.startTest();
        Double result = Calculator.multiply(num1, num2);
        Test.stopTest();
        
        Double expectedNum = 15.0;
        
        System.assertEquals(expectedNum, result, 'The result should be 15.0');
    }
}