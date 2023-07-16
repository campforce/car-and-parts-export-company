@IsTest(SeeAllData=false)
private class AccountServiceTest {

    @IsTest
    static void accountPhoneUpdateTest() {
        Account acc = new Account();
        acc.Name='Test Phone Trigger';
        insert acc;
        
        Account createdAcc = [Select Name, Phone from Account where name ='Test Phone Trigger'];
        
        system.assertEquals('+1 222 333 4444', createdAcc.Phone);
    }
    
    
}