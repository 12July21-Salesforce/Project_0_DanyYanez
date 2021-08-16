public with sharing class ShelterPage_CC {
    public List<Shelter__c> shelters {
        get {
            if(shelters == null) {
                shelters = new List<Shelter__c>();
                for(Shelter__c st : [ SELECT Address__c, Capacity__c, City__c, Zip_Code__c,
                                             Number_of_Pets__c, Name, State__c, telephone__c
                                      FROM Shelter__c ] ) {
                                         shelters.add(st);
                                      }
            }
            return shelters;

        }
        set;
    }

  /*  public static void homePage() {
        return HomePage;
    }
    */
}