function AfficherLesFormations()
{
    $.ajax
    (
            {
              type:"get",
              url:"AfficherLesFormations.php",
              data:"idActivite="+$('#lstActivites').val(),
              success: function(data)
              {
                  $('#divFormations').empty();
                  $('#divAgents').empty();
                  $('#divFormations').append(data);
              },
              error:function()
              {
                  alert("Erreur pour récupérer les formations");
              }
            }
    );
}

function AfficherLesParticipants()
{
    $.ajax
    (
            {
              type:"get",
              url:"AfficherLesParticipants.php",
              data:"idFormation="+$('input[type=radio]:checked').val(),
              success: function(data)
              {
                  $('#divAgents').empty();
                  $('#divAgents').append(data);
              },
              error:function()
              {
                  alert("Erreur pour récupérer les formations");
              }
            }
    );
}

function ValiderPresences()
{
    var tabAgents = Array();
    var tabPresent = Array();
    $('input[type=checkbox]').each
    (
        function()
        {
            tabAgents.push($(this).val());
            tabPresent.push($(this).is(':checked'));
        }
    );
    $.ajax
    (
        {
            type:'get',
            url:'ValiderPresence.php',
            data:'tab='+tabAgents+"&idFormation="+$('input[type=radio]:checked').val()+"&pres="+tabPresent,
            success: function()
            {
                alert("ok");
            },
            error:function()
            {
                alert("Pas ok");
            }
        }
    );
}