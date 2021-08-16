trigger ShelterTrigger on Shelter__c (before insert, before update) {

    ShelterTriggerHandler.preventInvalidShelters(
                                            Trigger.new, Trigger.oldMap);
}