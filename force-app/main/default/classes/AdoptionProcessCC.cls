public with sharing class AdoptionProcessCC {
    private apexpages.standardController controller {get; set; }
    private Pet__c p;
    Pet_Adopted__c pet;

    public Pet_Adopted__c getPet() {
        if(pet == null) pet = new Pet_Adopted__c();
        return pet;
    }
    
    public List<Pet_Adopted__c> adoptList {
        get {
            if (adoptList == null) {
                adoptList = new List<Pet_Adopted__c>();
                for(Pet_Adopted__c adopted : [SELECT Id, Pet_Name__c FROM Pet_Adopted__c]) {
                    adoptList.add(adopted);
                }
            }
            return adoptList;
        }
        set;
    }
    // Save a new Pet_Adopted Record
    public Pagereference saveAdoption() {
        for(Pet_Adopted__c check : adoptList) {
            if(pet.Pet_Name__c == check.Pet_Name__c) { // Provides error message if pet has already be adopted
                ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR, 'This pet is already adopted. Choose another pet to adopt.'));
                return null;
            }
        }
        insert pet;
        //Redirects you to new Pet_Adopted record detail page if successful insert
        Pagereference adoptionPage = new ApexPages.StandardController(pet).view();
        adoptionPage.setRedirect(true);
        return adoptionPage;
    }

    public List<Pet__c> searchResults {get; set;}
    
    /*public Pagereference createAdoptionPage() {
        return Page.AdoptionProcessPage;
    }*/

    //Filters out search text for search bar
    public string searchText {
        get {
            if (searchText == null) searchText = '';
            return searchText;
        }
        set;
    }

    //constructor
    public AdoptionProcessCC(ApexPages.StandardController controller) {
        this.controller = controller;
        this.p = (Pet__c) controller.getRecord();
    }

    //Function that searches through the pet records and returns records with searched pet breed
    public Pagereference search() {
        if(searchResults == null) {
            searchResults = new List<Pet__c>();
        } else {
            searchResults.Clear();
        }
        String search = '%'+searchText+'%';
        searchResults = Database.query('SELECT Name, Breed__r.Name FROM Pet__c WHERE Breed__r.Name LIKE :search ORDER BY Breed__r.Name');
        return null;
    }
}