public with sharing class DonationControllerExtension {
    public PageReference pageRef(Id donId) {
        PageReference urlPage = Page.DonationRecordPage.getURL();
        return urlPage;

    }
}
