trigger job on Job_Yourname__c (before delete, before insert,before update ){
    if(trigger.isDelete && trigger.isBefore)
        jobtrigger.checkstatus(trigger.old);
    
    if((trigger.isUpdate || trigger.isInsert) && trigger.isBefore){
        jobtrigger.checkCan(trigger.new);
    }
    if(trigger.isUpdate && trigger.isBefore){
        jobtrigger.AfterUpdateMakeActiveTrue(trigger.new);
    }
    if((trigger.isInsert && trigger.isBefore) || (trigger.isUpdate && trigger.isAfter) || (trigger.isUpdate && trigger.isBefore))
    {
        jobtrigger.EmailtoManager(trigger.new);        
    }
}