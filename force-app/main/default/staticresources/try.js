<script>
function myfunction()
{
	
  $ = jQuery.noConflict();

    $(document).ready(function(){
    /* configure the validator  - set the email element to required if the phone is empty and vice versa */
        var validator = $('[id="{!$Component.createform}"]').validate({
                    debug: true,
                    rules: {
                        '{!$Component.createform.pblock.pbsection.name}': {
                                required: function() {
                                    return $('[id="{!$Component.createform.pblock.pbsection.name}"]').val()=='';
                                }
                        },  // email
                        '{!$Component.createform.pblock.pbsection.des}': {
                                required: function() {
                                    return $('[id="{!$Component.createform.pblock.pbsection.des}"]').val()=='';
                                }
                        },  // phone
                        '{!$Component.createform.pblock.pbsection.pos}': {
                                required: function() {
                                    return $('[id="{!$Component.createform.pblock.pbsection.pos}"]').val()=='';
                                }
                        },  // position
                        '{!$Component.createform.pblock.pbsection.sal}': {
                                required: function() {
                                    return $('[id="{!$Component.createform.pblock.pbsection.sal}"]').val()=='';
                                }
                        },  // salaray
                        '{!$Component.createform.pblock.pbsection.mang}': {
                                required: function() {
                                    return $('[id="{!$Component.createform.pblock.pbsection.mang}"]').val()=='';
                                }
                        },  // manager
                        
                        '{!$Component.createform.pblock.pbsection.expd}': {
                                required: function() {
                                    return $('[id="{!$Component.createform.pblock.pbsection.expd}"]').val()=='';
                                }
                        },  // expire date
                        
                        
                    },  // rules
                    messages: {
                        
                        '{!$Component.createform.pblock.pbsection.name}':"Field Required",
                        '{!$Component.createform.pblock.pbsection.des}':"Field Required",
                        '{!$Component.createform.pblock.pbsection.pos}':"Field Required",
                        '{!$Component.createform.pblock.pbsection.sal}':"Field Required",
                        '{!$Component.createform.pblock.pbsection.mang}':"Field Required",
                        '{!$Component.createform.pblock.pbsection.expd}':"Field Required",
                        
                    } // messages
            }
    )});
}
  </script>
