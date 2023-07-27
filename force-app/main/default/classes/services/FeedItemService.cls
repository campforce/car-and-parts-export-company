public with sharing class FeedItemService {
/**
     * when user post #[caseWorking] update current case status to the 'Working'
     * @param List<FeedItem> newFeedItemList
     * @author Aiday
     */
    public static void updateCaseStatus (List<FeedItem> newListFeeds){
         List<Case> listOfCases = new List<Case>();
        system.debug(newListFeeds);
    for (FeedItem fi : newListFeeds) {
        //--- This retrieves the case for which feed has been entered.
        Case c = [select id, status from Case where Id = :fi.ParentId];
     
              
      // check if body consist from word working
        if (fi.Body.containsIgnoreCase('caseworking')){
            c.Status = 'Working';    
        }
        if (fi.Body.containsIgnoreCase('caseescalated'))
        {
              c.Status = 'Escalated';  
        } 
        if(fi.Body.containsIgnoreCase('caseclosed')){
             c.Status = 'Closed';  
        } else {
            system.debug(fi.Body);         
        }
         listOfCases.add(c);
    }
        system.debug(listOfCases);
    	update listOfCases; 
    }

}