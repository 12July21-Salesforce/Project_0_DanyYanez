public with sharing class ShelterTriggerHandler {
 
    public static List<String> allShelters = new List<String>();

    static {
        for (List<Shelter__c> shelters : [SELECT City__c FROM Shelter__c]) {
            for (Shelter__c s : shelters) {
                allShelters.add(s.City__c);
            }
        }
    }

    public static void preventInvalidShelters(List<Shelter__c> newShelterList,
                                                      Map<ID, Shelter__c> oldShelterMap) {
        for (Shelter__c shelter : newShelterList) {
            Boolean checkCity = (trigger.isInsert || 
                oldShelterMap.get(shelter.Id).City__c != shelter.City__c);
            if (checkCity && shelter.City__c != NULL) {
                if (allShelters.contains(shelter.City__c)) {
                    shelter.City__c.addError(
                    'This City already has a registered shelter.');
                }
            }
        }
    }
}
