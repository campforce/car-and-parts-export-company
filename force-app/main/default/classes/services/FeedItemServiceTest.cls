@IsTest
private class FeedItemServiceTest {
	@TestSetup
    static void createRecords(){
        Case newCase= new Case();
		newCase.Origin ='Phone';
		newCase.Status='New';
		newCase.Subject='TestPositive';
		insert newCase;
		FeedItem newFi=new FeedItem();
		newFi.ParentId = newCase.Id;
		newFi.Body='#[caseWorking]';
		insert newFi;
        Case newCase1= new Case();
		newCase1.Origin ='Phone';
		newCase1.Status='New';
		newCase1.Subject='TestNegative';
		insert newCase1;
		FeedItem newFi1=new FeedItem();
		newFi1.ParentId = newCase.Id;
		newFi1.Body='not cleare';
		insert newFi1;
    }
    @IsTest
    static void updateCaseStatusPositive(){
        Case c=[select id, status from case where subject='TestPositive'];
        system.assertEquals('Working', c.Status);
        
    }
    @IsTest
    static void updateCaseStatusNegative(){
        Case c=[select id, status from case where subject='TestNegative'];
        system.assertEquals('New', c.Status);
        
    }

}