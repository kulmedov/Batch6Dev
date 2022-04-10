public inherited sharing class AnimalsCallout {
    public static HttpResponse fetchAnimals(){
        //HttpRequest has the information about what you need from the endpoint 
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        
        //Http is used to send the request and receie response
        Http http = new Http();
        
        //The received response is of type HttpResponse which has methods to get status, body, code, etc 
        HttpResponse response = http.send(request);
        
        system.debug('Status Code: '+response.getStatusCode());        
        system.debug('Status: '+response.getStatus());
        
        if(response.getStatusCode() == 200){
            system.debug('Body: '+response.getBody());
            /*---------------------BELOW CODE FOR UNKNOWN RESPONSE-------------------------------------*/
            //if the response is unknown type convert it to default schema => Map<String, Object> => This is JSON object {}
            Map<String, Object> dataMap = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
            //check for the property you are looking for in the response
            if(dataMap.containsKey('animals')){
                Object animalsObject = dataMap.get('animals');
                system.debug('animals: '+animalsObject);
                
                String animalsJSON = JSON.serialize(animalsObject);
                //COnvert the properties' known data to appropriate schema
                List<String> animals = (List<String>)JSON.deserialize(animalsJSON, List<String>.class);
                System.debug('animals list: '+animals);
                
                for(String animal: animals){
                    system.debug('Animal name: '+animal);
                }
            }
            /*---------------------ABOVE CODE FOR UNKNOWN RESPONSE-------------------------------------*/
            /*---------------------BELOW CODE FOR KNOWN RESPONSE---------------------------------------*/
            AnimalsCalloutResponse animalsResponse = 
                (AnimalsCalloutResponse)JSON.deserialize(response.getBody(), AnimalsCalloutResponse.class);
            for(String animal: animalsResponse.animals){
                system.debug('Animal name known: '+animal);
            }
            /*---------------------ABOVE CODE FOR KNOWN RESPONSE-------------------------------------*/
        }else{
            Integer statusCode = response.getStatusCode();
            System.debug('Callout to Animals failed');
        }
        return response;
    }
}