trigger Expected_salary on Candidate_Yourname__c (before insert, before update) {

    for(Candidate_Yourname__c  Obj : Trigger.new)
    {
        
        if(Obj.Expected_Salary__c == null)
        {
            Obj.addError('Expected Salary field is missing');
        }
   }
}