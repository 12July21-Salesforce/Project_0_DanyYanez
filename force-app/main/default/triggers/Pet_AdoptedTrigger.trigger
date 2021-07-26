trigger Pet_AdoptedTrigger on Pet_Adopted__c (before insert, before update) {

    Pet_AdoptedTriggerHandler.preventInvalidPets(
                                                Trigger.new, Trigger.oldMap);
    
    Pet_AdoptedTriggerHandler.preventInvalidFamilies(
                                                Trigger.new, Trigger.oldMap);
                                               
}