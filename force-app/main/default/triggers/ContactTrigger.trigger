trigger ContactTrigger on Contact (before update, after update) {
    
    if(Trigger.isBefore && Trigger.isUpdate){
        
        for(Contact cont: Trigger.new){
            Contact oldContact = Trigger.oldMap.get(cont.Id);
                 if(cont.FirstName != oldContact.FirstName){
                cont.LastName = 'Betul';
                 }
        }
        
        
        
        
    }
    
                }