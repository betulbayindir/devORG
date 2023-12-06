trigger OpportunityTrigger on Opportunity (before update, after update) {
    
    
   /* public static void validateData(){
        for(Opportunity oppVal: trigger.new){
            if(oppVal.Name == 'hi'){
                oppVal.addError('name cant be hi');
            }
        }
    }
*/
    
    if(Trigger.isUpdate && Trigger.isBefore){
        
        for(Opportunity opp: Trigger.new){
            Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
            if(oldOpp.Name != opp.Name){
                Opp.Description = 'NAME CHANGED FROM ' + oldOpp.Name + ' TO ' + opp.Name; 
            }
            
            if(Trigger.isUpdate){
                System.debug('Trigger.isUpdate executed');
            }
            
      //      if(oldOpp.StageName != opp.StageName){
	//		opp.addError('You can\'t change the birthday dumdum');
       //     }
            
            
            if(opp.Amount == 0 || opp.Amount == null ){
                opp.addError('Amount can\'t be blank or 0.');
                    	}
            
            
                }
            }
                    }