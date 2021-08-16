@isTest
private class DonationPage_Test {
    /*
    @testSetup
    public static void loadDonations() {
        List<Donation__c> dont = LoadDataTestFactory.loadDonations();
    }

    @isTest
    private static void testDonations(){
        PageReference availabelDonations = Page.AvailableDonations;
        Test.setCurrentPage(availabelDonations);

        Test.startTest();        
        Donation__c donation = new Donation__c();
        ApexPages.StandardController stdCon = new ApexPages.StandardController(donation);
        DonationPage_CC dp = new DonationPage_CC(stdCon);

        List<DonationPage_CC.DonationWrapper> donationWrappers = dp.donList;

        for (DonationPage_CC.DonationWrapper wrapper : donationWrappers) {
            wrapper.checked = true;
        }

        dp.donList = donationWrappers;

        String urlHome = dp.goHomePage().getURL();
        String urlAvailable = dp.availablePage().getURL();
        String urlRecord = dp.DonRecordPage().getURL();

        Test.stopTest();

        List<DonationPage_CC.DonationWrapper> donationWrappersModified = dp.donList;
        Integer count = 0;
        for (DonationPage_CC.DonationWrapper wrapper : donationWrappersModified) {
            if ( !wrapper.checked) count++;
        }
		System.assertEquals(0, count, 'ERROR: Found at least one CourseWrapper element not checked');
        
        System.assertEquals(Page.AvailableDonations.getURL(), urlHome, 'ERROR: Expected to navigate to /apex/listcoursedeliveriespage');
        System.assertEquals(Page.AvailableDonations.getURL(), urlAvailable, 'ERROR: Expected to navigate to /apex/listcoursedeliveriespage');
        System.assertEquals(Page.DonationRecordPage.getURL(), urlRecord, 'ERROR: Expected to navigate to /apex/listcoursedeliveriespage');

    }*/
}