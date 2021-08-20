@IsTest
public with sharing class AdoptionProcessPageTest {
    @TestSetup
    private static void makeData(){
        Pet__c pet = new Pet__c();
        ApexPages.StandardController stdcon = new Apexpages.StandardController(pet);
        AdoptionProcessCC controller = new AdoptionProcessCC(stdcon);
    }
    public AdoptionProcessPageTest() {

    } 
}