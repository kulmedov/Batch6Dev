@isTest
public with sharing class AirlineTicketsTest {
    @isTest
    public static void AirlineTicketsMethod() {
        AirlineTickets bilet = new AirlineTickets();
        bilet.departureCity = 'Tokyo';
        bilet.arrivalCity = 'Ashgabat';
        bilet.flightNumber = '7777';
        bilet.seatAssignment = '1A';
        bilet.printTicket();
    }
}