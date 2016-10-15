(function($){

$(document).ready(function() {

    pathArray = location.href.split( '/' );
    protocol = pathArray[0];
    host = pathArray[2];
    baseUrl = protocol + '//' + host;

    $('#item').on('change', function() {
        var item = $(this).val();

        if(item){
            $.ajax({
                type: "post",
                url: baseUrl + "/stock/ajax/" + item,
                cache: false,
                success: function(response){
                    alert(response);
                    $('#result').html("");
                    var obj = JSON.parse(response);
                    if(obj.length > 0){
                        /*
                        var items = [];
                        $.each(obj, function(i,val){
                            cadena = '<tr>'+'<td>'+ val.id +'</td>'+'<td>'+ val.nombre +'</td>'+'<td>'+ val.created +'</td>'+'<td>'+ val.updated +'</td>';
                            cadena = cadena + '<td><a class="glyphicon glyphicon-pencil" data-toggle="modal" data-target="' + '#myModal' + val.id + '"></a></td>'+'</tr>';
                            items.push(cadena);
                        }); 
                        $('#destinoResultado').append.apply($('#destinoResultado'), items);*/
                    }else{
                        $('#result').html($('<tr/>').text('No rows found'));
                    }
                },
                error: function(){
                    console.log('Ajax response error');
                }
            });
        }
    });

});

})(jQuery);
