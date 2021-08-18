@IsTest
public with sharing class AdoptionProcessPageTest {
    /*@TestSetup
    private static void makeData(){
        Pet__c pet = new Pet__c();
        ApexPages.StandardController stdcon = new Apexpages.StandardController(pet);
        AdoptionProcessCC controller = new AdoptionProcessCC(stdcon);

    }*/
    @isTest static void testSearch() {
        // Tests the search function of VF page
        Shelter__c newShelter = new Shelter__c(Name = 'Test Shelter', Capacity__c = 10, City__c = 'New City', State__c = 'MD', 
        Address__c = '123 Test Street', telephone__c = '1231231234', e_Mail__c = 'test@test.com', Zip_Code__c = '12345');
        insert newShelter;
        Breed__c testBreed = new Breed__c(Name = 'Testing Breed');
        insert testBreed;
        Pet__c pet = new Pet__c(Name = 'NewPet',Breed__c = testBreed.id, Status__c = 'In Shelter', Shelter__c = newShelter.id);
        insert pet;
        ApexPages.StandardController stdcon = new Apexpages.StandardController(pet);
        AdoptionProcessCC controller = new AdoptionProcessCC(stdcon);
        controller.searchText ='Testing Breed';
        controller.search();

        System.assertEquals(1, controller.searchResults.size(), 'Only should contain 1 result');
    }

    @isTest static void testSaveAdoptionRecords() {
        //Supposed to Test the saveAdoptionFunction
        Shelter__c newShelter = new Shelter__c(Name = 'Test Shelter', Capacity__c = 10, City__c = 'New City', State__c = 'MD', 
        Address__c = '123 Test Street', telephone__c = '1231231234', e_Mail__c = 'test@test.com', Zip_Code__c = '12345');
        insert newShelter;
        Breed__c testBreed2 = new Breed__c(Name = 'Testing Breed');
        insert testBreed2;
        Pet__c pet2 = new Pet__c(Name = 'NewPet',Breed__c = testBreed2.id, Status__c = 'In Shelter', Shelter__c = newShelter.id);
        insert pet2;
        Family__c newFam = new Family__c(Name= 'Carrion',Address__c='123 Jasmine St',Address_2__c='323',City__c='Florence',e_Mail__c='carrrion@example.com',Notes__c='',
        State__c='LA',Status__c='Pending Information',Telephone__c='7872256199',Zip_Code__c='35221');
        insert newFam;
        Pet_Adopted__c newAdoption = new Pet_Adopted__c(Pet_Name__c = pet2.id, Family_Name__c = newFam.id);
        ApexPages.StandardController stdcon = new Apexpages.StandardController(pet2);
        AdoptionProcessCC controller = new AdoptionProcessCC(stdcon);
        //controller.saveAdoption();
        /*Boolean bool = false;
        for(Pet_Adopted__c check : controller.adoptList) {
            if(pet.Name == check.Pet_Name__c) {
                bool = true;
                break;
            }
        }
        System.assert(!bool);*/
        

    }
}
