public  class Students {
    public String firstName;
    public String lastName;
    public String classYear;
    public String major;
    public void generateReport(){
        System.debug('This report is generated for'  + firstName + ' ' + lastName +' studies in ' + classYear + ' at ' + major);
    }
}