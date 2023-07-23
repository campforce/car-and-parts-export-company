public with sharing class AccountService {

    /**
     *Write the trigger when Account inserrted with Type='Hot', create the task to owner
     * Test Class: insertTaskToOwnerTest
     * @author Gul Bayram
     */


    public static void insertTaskToOwner(list<Account> accNewList) {
       
        List<Task> tasksToInsert = new List<Task>();
    
        for (Account acc : accNewList) {
            if (acc.Rating == 'Hot') {
                Task newTask = new Task();
                newTask.Subject = 'Big Company';
                newTask.WhatId = acc.Id;
                newTask.OwnerId = acc.OwnerId;
                newTask.Status = 'Not Started';
                newTask.Priority = 'Normal';
                
                tasksToInsert.add(newTask);
            }
            
            
        }
        
        if (!tasksToInsert.isEmpty()) {
            insert tasksToInsert;
        }
       
    }
}