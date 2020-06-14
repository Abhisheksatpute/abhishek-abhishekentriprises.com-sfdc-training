trigger candidate on Candidate_Yourname__c (before insert, before update, before delete) {

   /*if(trigger.isInsert && trigger.isBefore){
        candidateHelper.applyDate(trigger.new);
    }
   */
    if(trigger.isInsert && trigger.isBefore){
        candidateHelper.jobStatus(trigger.new);
    }
   
    if((trigger.isInsert && trigger.isBefore) || (trigger.isUpdate && trigger.isBefore)){
        candidateHelper.salaryCheck(trigger.new);
    }
   
   if((trigger.isUpdate || trigger.isInsert) && trigger.isBefore){
        candidateHelper.sendMail(trigger.new);
    }
   
}