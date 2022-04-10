AirlineTickets bilet = new AirlineTickets();
bilet.departureCity = 'Jakarta';
bilet.arrivalCity = 'New York';
bilet.flightNumber = '117A';
bilet.seatAssignment = '7a';
bilet.printTicket();
System.debug('your seat is  ' + bilet.seatAssignment);
System.debug(bilet);