public class FeedItemTriggerHandler extends TriggerHandler{
	private List<FeedItem> newFeedItemList;
    private List<FeedItem> oldFeedItemList;
    private Map<Id, FeedItem> newFeedItemMap;
    private Map<Id, FeedItem> oldFeedItemMap;

    public FeedItemTriggerHandler() {
        this.newFeedItemList = (List<FeedItem>) Trigger.new;
        this.oldFeedItemList = (List<FeedItem>) Trigger.old;
        this.newFeedItemMap = (Map<Id, FeedItem>) Trigger.newMap;
        this.oldFeedItemMap = (Map<Id, FeedItem>) Trigger.oldMap;
    }

    public override void beforeInsert() {
       
    }
    
    public override void beforeUpdate() {
             
    }
    
    public override void afterInsert() {
        FeedItemService.updateCaseStatus (this.newFeedItemList);
             
    }
  
    
    public override void afterUpdate() {
            
    }
    
}