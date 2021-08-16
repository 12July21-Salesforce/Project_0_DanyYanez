public with sharing class DonationPage_CC {
    
    private ApexPages.StandardController controller;
    public DonationPage_CC(ApexPages.StandardController controller){
        this.controller = controller;
    }
    
    public List<Donation__c> donList {
        get {
            if (donList == null) {
                donList = new List<Donation__c>();
                for (Donation__c don : [SELECT Name, id, Inventory__r.Name FROM Donation__c]) {
                    donList.add(don);
                }
            }
            return donList;
        }
        set;
    }

    public PageReference availablePage(){
        return Page.AvailableDonations;   
    }

    public PageReference goHomePage(){
        return Page.AvailableDonations;   
    }

}