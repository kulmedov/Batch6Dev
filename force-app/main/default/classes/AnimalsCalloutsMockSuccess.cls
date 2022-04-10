@isTest
public class AnimalsCalloutsMockSuccess implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type','application/json');
        response.setStatusCode(200);
        response.setBody('{"animals":["Gorilla","Lion","Monkey","Snakes"]}');
        return response;
    }
}