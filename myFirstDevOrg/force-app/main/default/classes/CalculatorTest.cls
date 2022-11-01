
@isTest
public  class CalculatorTest {
    @isTest
    public static void testPrintMethod(){
        Calculator calc = new Calculator();
        calc.printNewMessage('calling from test method');
        calc.printAndReturnMessage('calling from test method');

    }
}
