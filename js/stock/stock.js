(function($){

$(document).ready(function() {

    pathArray = location.href.split( '/' );
    protocol = pathArray[0];
    host = pathArray[2];
    baseUrl = protocol + '//' + host;

    var ajaxCall = function() {
        var item = $('#item').val();

        if(item){
            $.ajax({
                type: "post",
                url: baseUrl + "/stock/ajax/" + item,
                cache: false,
                success: function(response){
                    $('#result').html("");
                    var markup = '';
                    var obj = JSON.parse(response);
                    if(obj.length > 0){
                        var items = [];
                        $.each(obj, function(i,val){
                            markup = '<tr>'+'<td>'+ val.name +'</td>'+'<td>'+ val.season +'</td>'+'<td>'+ val.year +'</td>'+'<td>'+ val.size +'</td>';
                            markup = markup + '<td><input class="quantity" type="number" name="quantities[' + val.size_id + ']"></td>'+'</tr>';
                            items.push(markup);
                        }); 
                        $('#result').append.apply($('#result'), items);
                    }else{
                        $('#result').html($('<tr/>').text('No rows found'));
                    }
                },
                error: function(){
                    console.log('Ajax response error');
                }
            });
        }
    }

    var ajaxSearch = function() {
        if($("#item-search").val().length >= 0){
            var item = $('#item-search').val()

            $.ajax({
                type: 'post',
                url: baseUrl + '/stock/ajax_search',
                data: {
                    item: item
                },
                success: function(response){
                    $('#result').html("");
                    var markup = '';
                    var obj = JSON.parse(response);
                    if(obj.length > 0){
                        var items = [];
                        $.each(obj, function(i,val){
                            markup = '<tr>'+'<td>'+ val.item +'</td>'+'<td>'+ val.season +'</td>'+'<td>'+ val.year +'</td>';
                            markup += '<td>'+ val.color +'</td>' + '<td>'+ val.size +'</td>' + '<td>' + val.quantity + '</td>'+'</tr>';
                            items.push(markup);
                        }); 
                        $('#result').append.apply($('#result'), items);
                    }else{
                        $('#result').html($('<tr/>').text('No rows found'));
                    }
                },
                error: function(){
                    console.log('Ajax response error');
                }
            });
        }
    }

    ajaxCall();

    $('#item').on('change', ajaxCall);

    $('#default_quantity').on('change', function() {
        $('.quantity').val($(this).val());
    });

    $('#item-search').keyup(function() {
        ajaxSearch();
    });
});

})(jQuery);
