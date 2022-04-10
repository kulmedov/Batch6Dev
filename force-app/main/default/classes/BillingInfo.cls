public  class BillingInfo {
    public date calcNextBillingDate(Integer frequencyInMonths, date previousBilledDate) {
        date requiredSumit = previousBilledDate.addMonths(frequencyInMonths);
        return requiredSumit; 

    }
}
