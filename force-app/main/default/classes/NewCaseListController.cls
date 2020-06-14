public with sharing class NewCaseListController {
    
public List<Case> getNewCases() {
    
    List<Case> results = Database.query(
        'SELECT Id, CaseNumber from Case where status = \'New\'');
  
    return results;
}
}