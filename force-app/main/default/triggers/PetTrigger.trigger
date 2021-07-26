trigger PetTrigger on Pet__c (before insert, before update) {
    PetTriggerHandler.createNextAppointment(
                                            Trigger.new);
}