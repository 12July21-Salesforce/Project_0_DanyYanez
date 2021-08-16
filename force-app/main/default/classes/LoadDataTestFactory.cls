public with sharing class LoadDataTestFactory {
    public static List<Donation__c> loadDonations() {
        return Test.loadData(Donation__c.sObjectType, 'TestDonations');
    }
}
