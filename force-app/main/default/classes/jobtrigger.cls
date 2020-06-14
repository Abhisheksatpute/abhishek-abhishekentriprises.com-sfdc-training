public class jobtrigger {
    public static void checkstatus(List <Job_Yourname__c> obj){
        for(Job_Yourname__c obj1 : obj){
            if(obj1.Active__c){
                obj1.addError('This Job is active and can not be deleted');
            }
        }
    }  
    public static void checkCan(List <Job_Yourname__c> obj){
        for(Job_Yourname__c obj1 : obj){
            if(Obj1.Hired_Applicants__c >= Obj1.Number_of_Positions__c){
                obj1.Active__c = false;
            }
        }
    }
    public static void AfterUpdateMakeActiveTrue(List <Job_Yourname__c> obj){
        for(Job_Yourname__c obj1 : obj){
            if(Obj1.Hired_Applicants__c < Obj1.Number_of_Positions__c && Obj1.Active__c == False){
            Obj1.Active__c = True;        
        	}
        }
    }
    public static void EmailtoManager(List <Job_Yourname__c> obj){
        List<Messaging.SingleEmailMessage> mails =new List<Messaging.SingleEmailMessage>();
        for(Job_Yourname__c obj1 : obj){
			if(obj1.Hired_Applicants__c == obj1.Number_of_Positions__c){
                  Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
                  List<String> sendTo = new List<String>();
                  sendTo.add(obj1.Mangers__c);
                  mail.setToAddresses(sendTo);
                  mail.setSubject('Hiring Information');
                  String body = 'All the required candidate has been hired for this job on ' + obj1.LastModifiedDate.date();
                  mail.setHtmlBody(body);
                  mails.add(mail);
            }
        }
                Messaging.sendEmail(mails);
    }
}