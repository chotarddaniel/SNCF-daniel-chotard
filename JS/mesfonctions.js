function AfficherLesFormations()
{
    $.ajax
    (
        {
            type:"get",
            url:"../PHP/getAllFormations.php",        
             data:"num="+$('option[name=num]:checked').val(),
            success:function(data)
            {
                console.log("ca fonctionne");
                $('#divJeux').empty();
                $('#divJeux').append(data);
                
                
            },
            error:function(data)
            {
                console.log("pas encore mais test encore");
                alert("erreur sur la récup des formations");
            }
        }
    );
    
}