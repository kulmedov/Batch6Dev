@isTest
public class AnimalsCalloutTest {
     
	@isTest
    static void calloutSuccess(){
        //1st parameter: always HttpCalloutMock.class if the mock is from Apex class
        //2nd parameter: Instance of the mock class
        Test.setMock(HttpCalloutMock.class, new AnimalsCalloutsMockSuccess());
        
        Test.startTest();
        //Make the callout from the main class
        HttpResponse response = AnimalsCallout.fetchAnimals();
        Test.stopTest();
        
        //system.assertEquals(expected, actual, message when expected != actual)
        System.assertEquals(200, response.getStatusCode(),'The status code must be 200');
    }
    
    @isTest
    static void calloutFailure(){
        //1st parameter: always HttpCalloutMock.class if the mock is from Apex class
        //2nd parameter: Instance of the mock class
        Test.setMock(HttpCalloutMock.class, new AnimalsCalloutsMockFailure());
        
        Test.startTest();
        //Make the callout from the main class
        HttpResponse response = AnimalsCallout.fetchAnimals();
        Test.stopTest();
        //system.assertEquals(expected, actual, message when expected != actual)
        System.assertEquals(404, response.getStatusCode(),'The status code must be 404');
    }
}