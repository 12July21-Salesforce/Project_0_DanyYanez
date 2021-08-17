@isTest
private class AvailableDonationsPage_Test {
    @testSetup
    private static void loadTestData() {
        List<Donation__c> donations = LoadDataTestFactory.loadDonations();        
    }

    @isTest
    private static void testDonationsNavigation(){
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

        String urlAvailable = dp.availablePage().getURL();
        String urlRecord = dp.DonRecordPage().getURL();

        Test.stopTest();

        List<DonationPage_CC.DonationWrapper> donationWrappersModified = dp.donList;
        Integer count = 0;
        for (DonationPage_CC.DonationWrapper wrapper : donationWrappersModified) {
            if ( !wrapper.checked) count++;
        }
		System.assertEquals(0, count, 'ERROR: Found at least one CourseWrapper element not checked');
        
        System.assertEquals(Page.AvailableDonations.getURL(), urlAvailable, 'ERROR: Expected to navigate to /apex/listcoursedeliveriespage');
        System.assertEquals(Page.DonationRecordPage.getURL(), urlRecord, 'ERROR: Expected to navigate to /apex/listcoursedeliveriespage');
    }
}