trigger finding on Job_Yourname__c (before insert , before update, before delete,after insert,after update, after delete, after undelete) {

    If (Trigger.isBefore){
        If(Trigger.isInsert){
        System.debug('I am inside before insert');
        }else if(Trigger.isUpdate){
        System.debug('I am inside before update');
        }else if(Trigger.isDelete){
        System.debug('I am inside before delete');
        }
        System.debug('before events');
        System.debug('Trigger new'+Trigger.new);
        System.debug('Trigger old'+Trigger.old);
        System.debug('Trigger oldmap'+Trigger.oldMap);
        System.debug('Trigger Newmap'+Trigger.newMap);
     }
        else if(Trigger.isAfter){
        If(Trigger.isInsert){
        System.debug('I am inside after insert');
        }else if(Trigger.isUpdate){
        System.debug('I am inside after update');
        }else if(Trigger.isDelete){
        System.debug('I am inside after delete');
        }
        System.debug('after events');
        System.debug('Trigger new'+Trigger.new);
        System.debug('Trigger old'+Trigger.old);
        System.debug('Trigger oldmap'+Trigger.oldMap);
        System.debug('Trigger Newmap'+Trigger.newMap);
     }
}