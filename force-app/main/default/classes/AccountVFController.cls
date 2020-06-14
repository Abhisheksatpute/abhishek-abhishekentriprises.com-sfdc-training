public class AccountVFController {

    public List<sObject> records{get;set;}

    public List<String> fields{get;set;}

    public AccountVFController(){

        records= [Select First_Name__c, Last_Name__c, phone_number__c FROM Candidate_Yourname__c];

        fields = new List<String>{'First_Name__c', 'Last_Name__c', 'phone_number__c'};

    }

}