public with sharing class ListPractice {
    // Part 3.1 Create a static class variable of type List<Planets> and name it as planetsList here 
    //planet is the class which we already have in our org
    public Static List<Planet> planetList = new List<Planet>();

public String addPlanet(String planetName, Integer planetNumber, Integer numberOfMoons){
    String returnMessage = '';
    if(planetName != null && planetName != ''){
        Planet p = new Planet();
        p.name = planetName;
        p.planetNumber = planetNumber;
        p.numberOfMoons = numberOfMoons;
        planetList.add(p);
        returnMessage = 'Planet added successfully';
    } else {
        returnMessage = 'Planet without name can not be added to the list';
    }
    return returnMessage;
}
}