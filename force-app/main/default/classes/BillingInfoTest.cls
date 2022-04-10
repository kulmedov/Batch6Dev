@isTest
public with sharing class BillingInfoTest {
    @isTest
    public static void BillingInfoTest() {
        BillingInfo requiredSumit = new BillingInfo();
        date d=requiredSumit.calcNextBillingDate(6, date.newInstance(2021, 12, 16));
        Date dt = System.today().addMonths(6);
        System.assertEquals(dt, d);
        
    }
}