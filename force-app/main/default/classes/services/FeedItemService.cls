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
     
        //--- Now we check if the feed ends with text '#[caseWorking]'. 
     
    String bodyText = fi.Body.replaceAll('\\[[^\\]]*\\]', '');
        if (fi.Body==bodyText){
            c.Status = 'Working';    
        } else {
            system.debug(fi.Body);
            system.debug(bodyText);
         
        }
     listOfCases.add(c);
    }
        system.debug(listOfCases);
    update listOfCases; 
    }

}