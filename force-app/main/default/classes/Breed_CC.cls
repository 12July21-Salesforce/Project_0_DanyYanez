public with sharing class Breed_CC {
    
    // gets values from SOQL query and assigns them to a list of Breed sObjects so you can 
    // call {!breedList} and use .notation in page to diplay field values from sObject
    public List<Breed__c> breedList {
        get {
            breedList = new List<Breed__c>();
            for(Breed__c b : [SELECT Name, Barking_Level__c, Coat_Length__c, Coat_Type__c, Energy_Level__c,
                            Good_With_Kids__c, Good_With_Other_Dogs__c, Height__c, Life_Expectancy__c,
                            Trainability_Level__c, Weight__c FROM Breed__c]){
                breedList.add(b);
            }
        return breedList;
        }
        set;
    }
    
    // create a new breed sObject so we can assign field values to it in page 
    Breed__c Br;
    public Breed__c getBr() {
        if(Br == null) Br = new Breed__c();
        return Br;
    }

    //navigate to the create breed page and return to view breed page
    public PageReference createBreedPage(){
        return Page.CreateBreedPage;
    }
    public PageReference breedPage(){
        return Page.BreedPage;
    }
    //save sObject record and return to breed page
    public PageReference saveBreed(){
        insert Br;
        return Page.BreedPage;
    }
    //return to homepage
    //public PageReference homePage(){
    //    return Page.HomePage;
    //}

}
