public with sharing class DonationPage_CC {
    
    private ApexPages.StandardController controller;
    public DonationPage_CC(ApexPages.StandardController controller){
        this.controller = controller;
    }
    
    public List<DonationWrapper> donList {
        get {
            if (donList == null) {
                donList = new List<DonationWrapper>();
                for (Donation__c don : [SELECT Name, id, Inventory__r.Name FROM Donation__c]) {
                    donList.add(new DonationWrapper(don));
                }
            }
            return donList;
        }
        set;
    }

    public PageReference DonRecordPage() {
        PageReference pageRef = Page.DonationRecordPage;
        Integer count = 0;
        String newId;
        for (DonationWrapper dw : donList) {
            if (dw.checked) {
                count += 1;
                newId = dw.donation.id;
            }
        }
 
        if (count == 1) {
            pageRef.getParameters().put('id', Id.valueOf(newId));
            return pageRef;
        } else {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR, 'You can select only one Shelter to donate'));
            return null;
        }		
    }

    public PageReference availablePage(){
        PageReference newPage = Page.AvailableDonations;
        newPage.setRedirect(true);
        return newPage; 
    }

    public PageReference goHomePage(){
        return Page.AvailableDonations;   
    }

    public class DonationWrapper {
        public Donation__c donation {get; set;}
        public Boolean checked {get; set;}
        public String name {get; set;}
        public String invName {get; set;}
 
        public DonationWrapper(Donation__c d) {
            donation = d;
            checked = false;
            name = d.Name;
            invName = d.Inventory__r.Name;
        }
    }

}