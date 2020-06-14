public class Jobs {

    List<Job_Yourname__c> job =[select Active__c,Expires_On__c,Manager__c,Number_of_Positions__c,phone__c,Required_Skills__c,Required_Skill__c,Salary_Offered__c,Certification_Required__c from Job_Yourname__c];
    
    public List<Job_Yourname__c> getjob(){
    return job;
    }
    public List<sObject> records{get;set;}

    public List<String> fields{get;set;}

    public Jobs(){

        records= [Select First_Name__c, Last_Name__c, Email__C FROM Candidate_Yourname__c];

        fields = new List<String>{'First_Name__c', 'Last_Name__c', 'Email__c'};

    }
}