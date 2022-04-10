public class dateTimeMethodsDemo {
    //1. calculate our ages in month
    public void calculateAgeInMonth() {
        //Begmyrat's birthday
        date birthDate = date.newInstance(1990,06,17);
        date todayDate = date.today();
        // calculate difference
        integer ageInMonths = birthDate.monthsBetween(todayDate);
        System.debug('Bega age in month = ' + ageInMonths);
    }
    
    public void calculateAgeInDays(){
        
         //Begmyrat's birthday
        date birthDate = date.newInstance(1990,06,17);
        date todayDate = date.today();
        // calculate difference
        integer ageInDays = birthDate.daysBetween(todayDate);
        System.debug('Bega age in days = ' + ageInDays);
    }
    
    //3. subscription end date
    public void printSubscriptionEndDate(){
             //today's date
        date subscriptionStartDate = date.today();
        //subscription end date
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        System.debug('subscription end date = ' +subscriptionEndDate);
    // year
    integer endDateYear = subscriptionEndDate.year();
    System.debug('end date year: ' + endDateYear);
    
    //month
    integer endDateMonth = subscriptionEndDate.month();
    System.debug('end date month: ' + endDateMonth);
    }
    
    //4. subscription start date
    public void subscriptionStartDate(){
        date subscriptionEndDate = date.today();
        date subscriptionStartDate = subscriptionEndDate.addDays(-1000);
        System.debug('subscription start date = ' + subscriptionStartDate);
    }
    
    //5. offer end datetime
    public void printOfferEndDateTime(){
      datetime dtNow = datetime.now();
      
      datetime dtOfferEnd = dtNow.addHours(51);
      System.debug('offer end date ' + dtOfferEnd);
    }
        
}