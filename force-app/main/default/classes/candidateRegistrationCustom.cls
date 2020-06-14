public class candidateRegistrationCustom {

    public Candidate_YourName__c ct {get; set;}

    public candidateRegistrationCustom(){
ct = new Candidate_YourName__c();
    }

    public PageReference save(){
       
        try{
            INSERT ct;
        }catch(DmlException ex){
            System.debug('Aah. There you Go. Again Error!');
            ApexPages.addMessages(ex);
        }
       
        return new PageReference('/'+ct.ID);
    }
}