public class candidateHelper {

   /* public static void applyDate(List<Candidate_Yourname__c> l){
        for(Candidate_Yourname__c c: l){
            if(c.Application_Date__c != c.CreatedDate){
                c.Application_Date__c = c.CreatedDate.date();
            }
        }
    }*/
   
    public static void jobStatus(List<Candidate_Yourname__c> l){
        List<Job_Yourname__c> rec = new List<Job_Yourname__c>([select ID,Name from Job_Yourname__c where Active__c =false]);
                
        for(Candidate_Yourname__c j: l){
            for(Job_Yourname__c r:rec){
                if(String.valueOf(j.Jobs__c) == r.ID){           
                    j.addError('This job is not active. You can not apply for this job.');
                }
            }	
        }
    }
               
                                               
    
    public static void salaryCheck(List<Candidate_Yourname__c> l){
        for(Candidate_Yourname__c c: l){
            if(c.Expected_Salary__c == null || c.Expected_Salary__c  <= 0 ){
            c.addError('Please specify the expected salary!!');
        }
        }
    }
   
   public static void sendMail(list<Candidate_Yourname__c> l){
       
    List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
       
        for(Candidate_Yourname__c i: l){
           
            if(i.Status__c == 'Hired'){
               
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            List<String> reciever = new List<String>();
           
            reciever.add(i.Email__c);
           
                
            email.setToAddresses(reciever);
            email.setSubject('Information Regarding Job Application.');
            String eBody = 'Congratulations. You have been hired for the job.';
            email.setHTMLBody(eBody);
            emails.add(email);
            Messaging.sendEmail(emails);
               
        }
        }
    }
   
}