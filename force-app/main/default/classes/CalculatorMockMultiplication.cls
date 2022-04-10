@isTest
public class CalculatorMockMultiplication implements WebServiceMock{
    public void doInvoke(
    	Object stub,
        Object request,
        Map<String, Object> response_map_x,
        String endpoint,
        String soapAction,
        String requestName,
        String responseNS,
        String responseName,
        String responseType
    ){
        //Create a response variable
        calculatorServices.doMultiplyResponse response_x = new calculatorServices.doMultiplyResponse();
        
        //Assign the mock value
        response_x.return_x = 15;
        
        //Add the entry in the response map
        response_map_x.put('response_x', response_x);
    }
}