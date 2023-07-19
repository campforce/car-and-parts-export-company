@IsTest
private class FeedItemServiceTest {
	@TestSetup
    static void createRecords(){
        Case newCaseW= new Case();
		newCaseW.Origin ='Phone';
		newCaseW.Status='New';
		newCaseW.Subject='TestPositiveWorking';
		insert newCaseW;
		FeedItem newFiW=new FeedItem();
		newFiW.ParentId = newCaseW.Id;
		newFiW.Body='#[caseWorking]';
		insert newFiW;
		Case newCaseE= new Case();
		newCaseE.Origin ='Phone';
		newCaseE.Status='New';
		newCaseE.Subject='TestPositiveEscalated';
		insert newCaseE;
		FeedItem newFiE=new FeedItem();
		newFiE.ParentId = newCaseE.Id;
		newFiE.Body='#[caseEscalated]';
		insert newFiE;
        Case newCase1= new Case();
		newCase1.Origin ='Phone';
		newCase1.Status='New';
		newCase1.Subject='TestNegative';
		insert newCase1;
		FeedItem newFi1=new FeedItem();
		newFi1.ParentId = newCase1.Id;
		newFi1.Body='not cleare';
		insert newFi1;
    }
    @IsTest
    static void updateCaseStatusWorking(){
        Case working=[select id, status from case where subject='TestPositiveWorking'];
        system.assertEquals('Working', working.Status, 'not working');        
    }
    @IsTest
    static void updateCaseStatusEscalated(){
       	Case c=[select id, status from case where subject='TestPositiveEscalated'];
        system.assertEquals('Escalated', c.Status);
        
    }
    @IsTest
    static void updateCaseStatusNegative(){
        Case c=[select id, status from case where subject='TestNegative'];
        system.assertEquals('New', c.Status);
        
    }

}