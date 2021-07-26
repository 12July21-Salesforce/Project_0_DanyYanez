public with sharing class Pet_AdoptedClass {
    
    public static List<String> allPets = new List<String>();
    public static List<String> allFamilies = new List<String>();

    static {
        for (List<Pet_Adopted__c> pets : [SELECT Pet__r.Name FROM Pet_Adopted__c WHERE Pet__r.Status__c = 'Adopted']) {
            for (Pet_Adopted__c p : pets) {
                allPets.add(p.Name);
            }
        }
    }

    public static void preventInvalidDogs(List<Pet_Adopted__c> newPetList,
                                                      Map<ID, Pet_Adopted__c> oldPetMap) {
        
        for (Pet_Adopted__c pet : newPetList) {
            Boolean checkName = (trigger.isInsert || 
                oldPetMap.get(pet.Id).Name != pet.Name);
            if (checkName && pet.Name != NULL) {
                if (allPets.contains(pet.Name)) {
                    pet.Name.addError(
                    'This Pet is already adopted.');
                }
            }
        }
    }
}
