trigger AccountTrigger on Account (before insert, before update, after insert, after update, before delete, after undelete) {
    new AccountTriggerHandler().run();
}