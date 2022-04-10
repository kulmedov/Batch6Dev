public  class AirlineTickets {
    public String departureCity;
    public String arrivalCity;
    public String flightNumber;
    public String seatAssignment;
    public void printTicket(){
    System.debug('This is ticket is for the journey from ' + departureCity + 'to' + arrivalCity);
    }
}