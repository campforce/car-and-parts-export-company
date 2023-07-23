trigger FeedItemTrigger on FeedItem (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
	new FeedItemTriggerHandler().run();
}