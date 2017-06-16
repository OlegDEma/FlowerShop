$(document).ready(function() {
    var a =  $('#do').val();
    if(a == "change"){
        menu('modifyProduct');
    }else if(a == "brand"){
        menu("createBrand");
    }else if(a == "model"){
        menu("createModel");
    }else if(a == "manager"){
        menu("createManager");
    }else if(a == "category"){
        menu("createCategory");
    }else if(a == "subcategory"){
        menu("createSubcategory");
    }else if(a == "delivery"){
        menu("createDelivery");
    }

    // alert(location.href);
//        alert(a);
})

    function menuHelp(id){
    $('#menu1').css('display','none');
    $('#menu3').css('display','none');
    $('#menu2').css('display','none');
    $('#menu4').css('display','none');
    $('#menu5').css('display','none');
    $('#menu6').css('display','none');
    $('#menu7').css('display','none');
    $('#menu8').css('display','none');
    $('#menu9').css('display','none');
    $('#menu10').css('display','none');
    $('#menu'+id).css('display','block');

}
function menu(e) {
    if(e == 'createProduct'){
        menuHelp(1);
    }else if(e == 'modifyProduct'){
       menuHelp(2);
    }else if(e == 'createBrand'){
       menuHelp(3);
    }else if(e == 'createModel'){
       menuHelp(4);
    }else if(e == 'createManager'){
       menuHelp(5);
    }else if(e == 'createCategory'){
      menuHelp(6);
    }else if(e == 'createSubcategory'){
       menuHelp(7);
    }else if(e == 'createDelivery'){
       menuHelp(8);
    }else if(e == 'Sale'){
       menuHelp(9);
    }else if(e == 'User'){
       menuHelp(10);
    }
}

function brand(id) {
    $('#changeName').css('display','none');
    $('select[id="changeBrand"]').css('display','block');
}
function  show(id) {
    $('#changeName').css('display','block');
    $('select[id="changeBrand"]').css('display','none');


}

function change(id) {
    var form = $('#form').attr('action','changeProduct/'+id);
    var form = $('#form').attr('action');
    $('div[name="changeform"]').css('display','block');
//       alert(form);

}

function changeBrand(id) {
    var form = $('#formBrand').attr('action','changeNewBrand/'+id);
    var form = $('#formBrand').attr('action');
    $('div[name="modifyBrand"]').css('display','block');
//       alert(form);

}

function changeModel(id) {
    var form = $('#formModel').attr('action','changeNewModel/'+id);
    var form = $('#formModel').attr('action');
    $('div[name="modifyManager"]').css('display','block');
//       alert(form);

}

function changeManager(id) {
    var form = $('#formManager').attr('action','changeNewManager/'+id);
    $('div[name="modifyModel"]').css('display','block');


}
function changeCategory(id) {
    var form = $('#formCategory').attr('action','changeNewCategory/'+id);
    $('div[name="formCategory"]').css('display','block');


}
function changeSubategory(id) {
    var form = $('#formSubcategory').attr('action','changeNewSubcategory/'+id);
    $('div[name="modifySubcategory"]').css('display','block');


}

function changeDelivery(id) {
    var form = $('#modifyDelivery').attr('action','changeNewDelivery/'+id);
    $('div[name="modifyDelivery"]').css('display','block');


}
function photo(id) {
    // var form = $('#photo').attr('action','saveImageForProduct?${_csrf.parameterName}=${_csrf.token}');
    $('div[name="photo"]').css('display','block');
    $('input[name="id"]').attr('value',id);


}


function typeOfSortt(sort) {
      var val = $('#page').val();
    window.location.href ="http://localhost:8080/products/Phone/"+sort;
}


function sort(sort) {
    $.ajax({
        url: 'sort',
        data:({sort : sort}),
        method: "GET",
        success : function () {
            location.reload();

        }

    })
}

function getTypes() {
    $.ajax({
        url: '/load',
        type: 'GET',
        contentType: 'application/json',
        success: function (types) {
            var all = '';

            for (var i = 0; i < types.length; i++) {
                var index = types[i].id;
                all += '<tr><td>' + types[i].name + '</td><td><a class="btnn" onclick="deleteCountry('+types[i].id+ ') " >Delete brand</a></td><td>  <a class="btnn" onclick="changeBrand('+types[i].id+')" >Modify</a></td></tr>';
            }
            $('#brandTable').html(all);
            // alert(all);
        },
        error:function () {
            alert("ERROR");
        }
    })
}

function deleteCountry(index) {

    $.ajax({

        url: 'deleteCountry?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'POST',
        contentType: 'application/json; charset=UTF-8',
        dataType: 'json',
        data: '' + index,
        success: function () {
            getTypes();
        },
        error:function () {
            getTypes();
        }
    })


}

function doAjax(e){
    $.ajax({
        url:'/addInCart/'+e,
        data:({password : $('#password').val()}),
        success:function(data){
            cartInfo();
        },
        error:function () {
            cartInfo();
        }
    });
}

function searchText( string, needle ) {
    return !!(string.search( needle ) + 1);
}

$(document).ready(function () {



//Живой поиск
    $('#search').bind("keyup", function() {

            var search = $('#search').val();
            // alert(search);
            // var search = this.value();
        $.ajax({
            url: '/searchRes',
            type: 'GET',
            contentType: 'application/json',
            data: ''+search,
            success: function (types) {
                // alert("EZ");
                if(search === ""){
                    $(".search_result").fadeOut();
                }else{
                var all = '';
                for (var i = 0; i < types.length; i++) {
                    var name = types[i].name;
                    var index = types[i].id;
                   if(searchText(name,search)){
                       all += '\n<li><a href="/productdetails/'+index+'">'+name+'</li>';
                   }

                }
                $('.search_result').html(all).fadeIn();
                }
            },
            error:function (types) {
                alert("ERROR");
            }
        })

    });

    $(".search_result").hover(function(){
        $(".who").blur(); //Убираем фокус с input
    })

//При выборе результата поиска, прячем список и заносим выбранный результат в input
    $(".search_result").on("click", "li", function(){
        s_user = $(this).text();
        //$(".who").val(s_user).attr('disabled', 'disabled'); //деактивируем input, если нужно
        $(".search_result").fadeOut();
    })

})

function cartInfo() {
    $.ajax({
        url: '/cartInfo',
        type: 'GET',
        contentType: 'application/json',
        success: function (types) {
            var many = types[0] + " товарів -";
            var price ="$" + types[1];
            var name = types[2];
            $('#many').html(many);
            $('#price').html(price);
            $('#userName').html(name);
        },
        error:function () {
            alert("ERROR");
        }
    })
}

