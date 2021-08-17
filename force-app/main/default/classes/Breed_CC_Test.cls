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



    
}