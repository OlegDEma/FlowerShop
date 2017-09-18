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
                all += '<tr><td>' + types[i].name + '</td><td><a class="btnn" onclick="deleteBrand('+types[i].id+ ') " >Delete brand</a></td><td>  <a class="btnn" onclick="changeBrand('+types[i].id+')" >Modify</a></td></tr>';
            }
            $('#brandTable').html(all);
        },
        error:function () {

        }
    })
}

function getModels() {
    $.ajax({
        url: '/loadModel',
        type: 'GET',
        contentType: 'application/json',
        success: function (types) {
            var all = '';
            for (var i = 0; i < types.length; i++) {
                var index = types[i].id;
                var name = types[i].nameOfModel;
                all +=  '<tr><td>'+name+'</td><td> <a class="btnn" onclick="deleteModel('+index+')" >Delete brand</a></td>'+
                '<td><a class="btnn" onclick="changeModel('+index+'" >Modify</a></td></tr>';
            }
            $('#modelTable').html(all);

        },
        error:function () {
        }
    })
}

function loadProduct() {
    $.ajax({
        url: '/loadProduct',
        type: 'GET',
        contentType: 'application/json',
        success: function (types) {
            var all = '';
            for (var i = 0; i < types.length; i++) {
                var index = types[i].id;
                var name = types[i].name;
                var nameOfModel = types[i].model;
                var price = types[i].price;
                var category = types[i].category;
                var brand = types[i].brand;
                all +=  '<tr><td>'+name+'</td><td>'+nameOfModel+'</td><td>'+price+'</td>'+
                '<td>'+category+'</td><td>'+brand+'                    <a class="btnn" onclick="deleteProduct('+index+')">Видалити продукт</a></td></tr>';
            }
            $('#loadProduct').html(all);
        },
        error:function () {
        }
    })
}

function deleteBrand(index) {

    $.ajax({

        url: 'deleteBrand?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
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

function deleteModel(index) {

    $.ajax({

        url: 'deleteModel?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'POST',
        contentType: 'application/json; charset=UTF-8',
        dataType: 'json',
        data: '' + index,
        success: function () {
            getModels();
        },
        error:function () {
            getModels();
        }
    })
}

function deleteProduct(index) {

    $.ajax({

        url: 'deleteProduct?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'POST',
        contentType: 'application/json; charset=UTF-8',
        dataType: 'json',
        data: '' + index,
        success: function () {
            // getModels();
            loadProduct();
        },
        error:function () {
            // getModels();
            loadProduct();
        }
    })
}


function doAjax(e){
  var a = $("button[data-id='"+e+"']").click();
}

function searchText( string, needle ) {
    return !!(string.search( needle ) + 1);
}

$(document).ready(function () {



//Живой поиск
    $('#search').bind("keyup", function() {

            var search = $('#search').val();
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
            }
        })

    });

    $(".search_result").hover(function(){
        $(".who").blur();
    })

    $(".search_result").on("click", "li", function(){
        s_user = $(this).text();
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
            // alert("ERROR");
        }
    })
}

function addNewModel() {
    var model;
    model = {
        nameOfModel: $('#nameOfModel').val()
    };
    $.ajax({
        url: 'addNewModel?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
        method: 'POST',
        contentType: 'application/json; charset=UTF-8',
        data: JSON.stringify(model),
        success:function(data){
            getModels();
            $('#nameOfModel').val("");
        },
        error: function(xhr, status, errorThrown) {
            alert("add faild "+ status + " " + errorThrown + " " + xhr);
        }
    });

}
var d = document,
    itemBox = d.querySelectorAll('.item_box'),
    cartCont = d.getElementById('cart_content');
function addEvent(elem, type, handler){
    if(elem.addEventListener){
        elem.addEventListener(type, handler, false);
    } else {
        elem.attachEvent('on'+type, function(){ handler.call( elem ); });
    }
    return false;
}

function getCartData(){
    return JSON.parse(localStorage.getItem('cart'));
}

function setCartData(o){
    localStorage.setItem('cart', JSON.stringify(o));
    return false;
}

function addToCart(e){
    this.disabled = true;
    var cartData = getCartData() || {},
        parentBox = this.parentNode,
        itemId = this.getAttribute('data-id'), // ID товара
        itemTitle = parentBox.querySelector('.item_title').innerHTML,
        itemImage = this.getAttribute('data-image'),
        itemPrice = parentBox.querySelector('.item_price').innerHTML;
    if(cartData.hasOwnProperty(itemId)){
        cartData[itemId][2] += 1;
    } else {
        cartData[itemId] = [itemTitle, itemPrice, 1,itemImage];
    }
    if(!setCartData(cartData)){
        this.disabled = false;
    }
    return false;
}
for(var i = 0; i < itemBox.length; i++){
    addEvent(itemBox[i].querySelector('.add_item'), 'click', addToCart);
}
function openCart(e){
    var cartData = getCartData(),
        totalItems = '';
    if(cartData !== null){
        totalItems = '<table class="shopping_list"><tr><th>Наименование</th><th>Цена</th><th>Кол-во</th></tr>';
        for(var items in cartData){
            totalItems += '<tr>';
            for(var i = 0; i < cartData[items].length-1; i++){
                totalItems += '<td>' + cartData[items][i] + '</td>';
                if(i == cartData[items].length-2){
                    totalItems += '<td><img style="height: 100px; width: 100px;" src="' + cartData[items][i+1] + '"></td>';
                }
            }
            totalItems += '</tr>';
        }
        totalItems += '</table>';
        cartCont.innerHTML = totalItems;
    } else {
        cartCont.innerHTML = 'В корзине пусто!';
    }
    return false;
}

addEvent(d.getElementById('checkout'), 'click', openCart);

addEvent(d.getElementById('clear_cart'), 'click', function(e){
    localStorage.removeItem('cart');
    cartCont.innerHTML = 'Корзина очишена.';
});
