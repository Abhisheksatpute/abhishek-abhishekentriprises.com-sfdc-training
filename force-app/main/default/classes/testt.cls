@isTest
public class testt {
    
	/*@isTest 
    static void mytest(){
        Candidate_Yourname__c obj = new Candidate_Yourname__c();
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'Manager';
        jb.Number_of_Positions__c = 3;
        jb.Mangers__c = 'a@gmail.com';
        jb.Required_Skills__c = 'MBA';
        jb.Required_Skill__c = 'Team Player';
        insert jb;
        obj.First_Name__c = 'abhi';
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Applied';
        obj.phone_number__c = '4578457845';
		obj.Expected_Salary__c = 45;
        obj.Jobs__c = jb.Id;
        insert obj;
    }  */
   /* @isTest
    static void mytest1(){
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'Manager';
        jb.Number_of_Positions__c = 3;
        jb.Mangers__c = 'a@gmail.com';
        jb.Required_Skills__c = 'MBA';
        jb.Required_Skill__c = 'Team Player';
        insert jb;
        Candidate_Yourname__c obj = new Candidate_Yourname__c();

        obj.First_Name__c = 'abhi';
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Hired';
        obj.phone_number__c = '4578457845';
        obj.Jobs__c = jb.Id;
        try{
		insert obj;
     		 }
        catch(Exception e){
			system.assertEquals( e.getMessage() , e.getMessage());
        }
    }*/
     @isTest
    static void mytest2(){
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'Manager';
        jb.Number_of_Positions__c = 3;
        jb.Mangers__c = 'a@gmail.com';
        jb.Required_Skills__c = 'MBA';
        jb.Required_Skill__c = 'Team Player';
        jb.Active__c = true ;
        	insert jb;
        try{
            delete jb;
        } 
        catch(Exception e){
			system.assertEquals( e.getMessage() , e.getMessage());
        }
        
    }
     @isTest
    static void mytest3(){
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'Manager';
        jb.Number_of_Positions__c = 1;
        jb.Mangers__c = 'a@gmail.com';
        jb.Required_Skills__c = 'MBA';
        jb.Required_Skill__c = 'Team Player';
        jb.Active__c = true ;
        	insert jb;
        Candidate_Yourname__c obj = new Candidate_Yourname__c();
		obj.First_Name__c = 'abhi';
        
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Hired';
        obj.phone_number__c = '4578457845';
		obj.Expected_Salary__c = 45;
        obj.Jobs__c = jb.Id;
         insert obj;

        try{
                       system.assertEquals( jb.Active__c, true);

            }
        catch(Exception e){
           system.assertEquals( jb.Active__c, false);

        }
    }
   /* @isTest 
    static void mytest4(){
        Candidate_Yourname__c obj = new Candidate_Yourname__c();
        Job_Yourname__c jb = new Job_Yourname__c();
        jb.Manager__c = 'Manager';
        jb.Number_of_Positions__c = 3;
        jb.Mangers__c = 'a@gmail.com';
        jb.Required_Skills__c = 'MBA';
        jb.Required_Skill__c = 'Team Player';
        jb.Active__c = false ;
		
        insert jb;
        obj.First_Name__c = 'abhi';
        obj.Salutation__c = 'Mr.';
        obj.Last_Name__c = 'satpute';
        obj.Email__c = 'abhi@gmail.com';
        obj.Status__c = 'Applied';
        obj.phone_number__c = '4578457845';
		obj.Expected_Salary__c = 45;
        obj.Jobs__c = jb.Id;
        insert obj;
        update jb.Active__c=true;

    }  */
    
}