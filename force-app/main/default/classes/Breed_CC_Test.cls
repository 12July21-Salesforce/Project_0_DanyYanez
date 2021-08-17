@isTest
private with sharing class Breed_CC_Test {
    
    @isTest
    static void testCreateBreedPage(){
        PageReference Page = Page.CreateBreedPage;
        Test.setCurrentPage(Page);           
        Test.startTest();
        Breed_CC breed = new Breed_CC();
        String url = breed.createBreedPage().getURL();
        Test.stopTest();
    }

    @isTest
    static void testBreedPage(){
        PageReference Page = Page.BreedPage;
        Test.setCurrentPage(Page);           
        Test.startTest();
        Breed_CC breed = new Breed_CC();
        String url = breed.breedPage().getURL();
        Test.stopTest();
    }

    @isTest
    static void testSaveBreed(){
        PageReference Page = Page.CreateBreedPage;
        Test.setCurrentPage(Page);           
        Test.startTest();
        Breed_CC breed = new Breed_CC();
        String url = breed.saveBreed().getURL();
        Test.stopTest();
    }
   
   
   
   /*
    @TestSetup
   static void testData(){
        List<Breed__c> breedTestList = new List<Breed__c>();   
        for(Breed__c b : [SELECT Name, Barking_Level__c, Coat_Length__c, Coat_Type__c, Energy_Level__c,
                            Good_With_Kids__c, Good_With_Other_Dogs__c, Height__c, Life_Expectancy__c,
                            Trainability_Level__c, Weight__c FROM Breed__c]){
            breedTestList.add(b);
        }
    }
  

    @isTest
    static void testNavigation(){
        PageReference breedPage = Page.breedPage;
        Test.setCurrentPage(breedPage);
        
        Test.startTest();
        
        Breed_CC b = new Breed_CC();


        Test.stopTest();

    }
*/

    
}
