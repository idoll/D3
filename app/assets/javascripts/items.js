$(document).ready(function(){
  	$("#item_slot").change(function(){
  		if($(this).val() == 'One-Handed' || $(this).val() == 'Two-Handed' || $(this).val() == 'Ranged')
    	{
    		$('label[for="item_Armor"]').show();
    		$('#item_minstat').show();
	    	$('label[for="item_Armor"]').html("Damage");
	    }
	    else if($(this).val() == 'Jewlery' || $(this).val() == 'Consumable' || $(this).val() == 'Crafting')
	    {
	    	$('label[for="item_Armor"]').hide();
	    	$('#item_minstat').hide();
	    }
	    else
	    {
	    	$('label[for="item_Armor"]').show();
	    	$('#item_minstat').show();
	    	$('label[for="item_Armor"]').html("Armor");
	    }
  	});

  	$("#item_minlevel").change(function(){
  		if($(this).val() < 0 || $(this).val() > 60)
  		{
  			alert("Required Level Must be a value between 0 and 60");
  		}
  	});
	});