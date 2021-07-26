public with sharing class Pet_AdoptedTriggerHandler {

    public static void preventInvalidPets(List<Pet_Adopted__c> newPetList,
                                                      Map<ID, Pet_Adopted__c> oldPetMap) {
        List<Id> allPets = new List<Id>();

        for (List<Pet_Adopted__c> pets : [SELECT Pet_Name__c FROM Pet_Adopted__c]) {
            for (Pet_Adopted__c p : pets) {
                allPets.add(p.Pet_Name__c);
            }
        }
        
        for (Pet_Adopted__c pet : newPetList) {
            Boolean checkName = (trigger.isInsert || 
            oldPetMap.get(pet.Id).Pet_Name__c != pet.Pet_Name__c);
            if (checkName && pet.Pet_Name__c != NULL) {
                if (allPets.contains(pet.Pet_Name__c)) {
                    pet.Pet_Name__c.addError(
                    'This Pet is already adopted.');
                }
            }
        }
    }

    public static void preventInvalidFamilies(List<Pet_Adopted__c> newPetList,
                                                      Map<ID, Pet_Adopted__c> oldPetMap) {
        List<Id> allFamilies = new List<Id>();

        for (List<Family__c> family : [SELECT Id FROM Family__c WHERE Status__c != 'Approved']) {
            for (Family__c f : family) {
                allFamilies.add(f.Id);
            }
        }
        
        for (Pet_Adopted__c fam : newPetList) {
            Boolean checkFamily = (trigger.isInsert || 
            oldPetMap.get(fam.Id).Family_Name__c != fam.Family_Name__c);
            if (checkFamily && fam.Family_Name__c != NULL) {
                if (allFamilies.contains(fam.Family_Name__c)) {
                    fam.Family_Name__c.addError(
                    'This family has pending information.');
                }
            }
        }
    }
}


