@IsTest(SeeAllData=false)
private class AccountServiceTest {

    /**
     *Test class: Write the trigger when Account inserrted with Type='Hot', create the task to owner
     *  Class: insertTaskToOwner
     * @author Gul Bayram
     */       
            @isTest
            static void HotRatingAccountTriggerTest() {
                // Create a test Account with a 'Hot' rating
                Account testAccount = new Account(
                    Name = 'Test Account',
                    Rating = 'Hot',
                    OwnerId = UserInfo.getUserId()
                );
                
                // Insert the test Account
                insert testAccount;
                
                // Retrieve the related Task records
                List<Task> tasks = [SELECT Subject, WhatId, OwnerId, Status, Priority FROM Task WHERE WhatId = :testAccount.Id];
                
                // Assert that a Task was created
                System.assertEquals(1, tasks.size(), 'A Task should have been created for the Account with a "Hot" rating.');
                
                // Assert Task field values
                Task createdTask = tasks[0];
                System.assertEquals('Big Company', createdTask.Subject, 'Task Subject should be "Big Company".');
                System.assertEquals(testAccount.Id, createdTask.WhatId, 'Task WhatId should be the same as the test Account Id.');
                System.assertEquals(testAccount.OwnerId, createdTask.OwnerId, 'Task OwnerId should be the same as the test Account OwnerId.');
                System.assertEquals('Not Started', createdTask.Status, 'Task Status should be "Not Started".');
                System.assertEquals('Normal', createdTask.Priority, 'Task Priority should be "Normal".');
            }
        }
    