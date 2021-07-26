trigger Pet_AdoptedTrigger on Pet_Adopted__c (before insert, before update) {

    Pet_AdoptedTriggerHandler.preventInvalidDogs(
                                                Trigger.new, Trigger.oldMap);

}