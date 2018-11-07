function AfficherLesFormations()
{
    $.ajax
    (
        {
            type:"get",
            url:"../PHP/getAllFormations.php",        
            //data:"num="+$('option[name=num]:checked').val(),
            data:"num="+$('#idformations').val(),
            success:function(data)
            {
                console.log("ca fonctionne");
                $('#divFormations').empty();
                $('#divFormations').append(data);
                        
            },
            error:function(data)
            {
                console.log("pas encore mais test encore");
                alert("erreur sur la récup des formations");
            }
        }
    );
    
}

function RadioLesFormations()
{
    $.ajax
    (
        {
            type:"get",
            url:"../PHP/getAllAgents.php",        
            data:"num2="+$('input[type=radio]:checked').val(),
            success:function(data)
            {
                console.log("ca fonctionne");
                $('#divRdFormations').empty();
                $('#divRdFormations').append(data);
                        
            },
            error:function(data)
            {
                console.log("pas encore mais test encore");
                alert("erreur sur la récup des formations");
            }
        }
    );
    
}

function PresenceFormation()
{
    var tabAgents = array();
    var tabPresent = array();
    $('input[type=checkbox]').each
    {(
        function()
        {
            tabAgents.push($(this).val());
            tabPresent.push($(this).is(':checked'));
        }
    )};
    $.ajax
    (
        {
            type:"get",
            url:"PresenceFormation.php",        
            data:"tab="+tabAgents+"&idFormations="+$('input[type=radio]:checked').val()+"&pres="+tabPresent,
            success:function()
            {
                alert("ok");        
            },
            error:function()
            {
                
            }
        }
    );
}