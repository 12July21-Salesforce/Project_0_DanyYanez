@isTest
private class DonationPage_Test {
    @testSetup
    private static void testData() {
        List<Donation__c> donTestList = new List<Donation__c>();
        for (Donation__c don : [SELECT Name, id, Inventory__c, Blankets_Needed__c, Blankets_to_Donate__c, Crates_Needed__c, Crates_to_Donate__c, 
                                    Food_Needed__c, Food_to_Donate__c, Leashes_Needed__c, Leashes_to_Donate__c, Towels_Needed__c, Towels_to_Donate__c,
                                    Toys_Needed__c, Chew_Toys__c FROM Donation__c]) {
            
                donTestList.add(don);
            
        }
    }

    @isTest
    private static void testSearchCoursesNavigation(){
        PageReference availabelDonations = Page.AvailableDonations;
        Test.setCurrentPage(availabelDonations);

        //DonationPage_CC dp = new DonationPage_CC();

        Test.startTest();        
        // String url = availabelDonations.getURL();
        
        Test.stopTest();

        //System.assertEquals(Page.AvailableDonations.getURL(), url, 'ERROR: Expected to navigate to /apex/listcoursedeliveriespage');

    }
}