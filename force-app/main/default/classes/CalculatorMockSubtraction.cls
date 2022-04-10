@isTest
public class CalculatorMockSubtraction implements WebServiceMock{
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
        calculatorServices.doSubtractResponse response_x = new calculatorServices.doSubtractResponse();
        
        //Assign the mock value
        response_x.return_x = 3;
        
        //Add the entry in the response map
        response_map_x.put('response_x', response_x);
    }
}