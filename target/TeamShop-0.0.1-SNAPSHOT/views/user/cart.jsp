<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="http://localhost:8080/adminpanel.js"></script>
<script>
    $('document').ready(function () {
//        loadCart();
        openCart();
    })
    function loadCart() {
        $.ajax({
            url: 'loadCart?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
            method: 'POST',
            contentType: 'application/json; charset=UTF-8',
            dataType: 'json',
            success: function (types) {
                var all = '';
//
                for (var i = 0; i < types.length; i++) {

                    all+=  '<ul class="cart_item">'+
                        '<li class="cart_img_col">'+
                       '<img src="http://localhost:8080/'+types[i].image+'"></li>'+
                        '<li class="cart_product_col"><p>'+types[i].name+' '+types[i].model+'</p><span><strong>Size: </strong>XL</span>'+
                    '</li><li class="cart_options_col"><span>Quantity: </span> <input type="number" min="1" value="1"></li>'+
                        '<li class="cart_price_col"><h2>$'+types[i].price+'</h2>'+
                        '</li><li class="cart_del_col"><a onclick="deleteProductInCart('+types[i].id+')"><img src="http://i.imgur.com/bI4oD5C.png"></a></li></ul>';


                   }
//                   alert(all);
                $('#insertCart').html(all);
//                // alert(all);
//                alert("EZ");
            },
            error:function () {
                alert("ERROR");
            }
        })
    }

    function deleteProductInCart(id) {
        $.ajax({

            url: 'deleteProdInCart?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
            method: 'POST',
            contentType: 'application/json',
//            dataType: 'json',
            data: '' + id,
            success: function () {
                loadCart();
                cartInfo();
            },
            error:function () {
                loadCart();
                cartInfo();
            }
        })


    }

    function loadCart() {
        $.ajax({
            url: 'loadCartItem?' + $('input[name=csrf_name]').val() + "=" + $('input[name=csrf_value]').val(),
            method: 'POST',
            contentType: 'application/json; charset=UTF-8',
            dataType: 'json',
            success: function (cart) {
                var list = cart.itemList;
//                for(var i=0;i<list.length; i++){
////                    alert(list[i].itemId);
////                    alert(list[i].itemPrice);
//                    alert(list[i].itemId+"  "+ list[i].itemQuantity);
//                }
//                alert(cart.cartQuantity);
//                alert(a);
                var all = '';
////
                for (var i = 0; i < list.length; i++) {
                    all+=  '<ul class="cart_item">'+
                        '<li class="cart_img_col">'+
                        '<img src="http://localhost:8080/'+list[i].itemImage+'"></li>'+
                        '<li class="cart_product_col"><p>'+list[i].itemName+' '+/*types[i].model+*/'</p><span><strong>Size: </strong>XL</span>'+
                        '</li><li class="cart_options_col"><span>Quantity: </span> <input type="number" min="1" value="'+list[i].itemQuantity+'"></li>'+
                        '<li class="cart_price_col"><h2>$'+list[i].itemPrice+'</h2>'+
                        '</li><li class="cart_del_col"><a onclick="deleteProductInCart('+list[i].itemId+')"><img src="http://i.imgur.com/bI4oD5C.png"></a></li></ul>';


                }
//                   alert(all);
                $('#insertCart').html(all);
////                // alert(all);
//                alert("EZ");

            },
            error:function () {
                alert("ERROR");
            }
        })
    }


</script>
<div class="page">
    <div id="store_cart">
<form:forEach items="${user.carts}" var="cart">

        <ul class="cart_head">
            <li class="cart_head_title">
                    ${cart.name}
            </li>
            <li class="cart_head_product">
                Product
            </li>
            <li class="cart_head_options">
                Edit
            </li>
            <li class="cart_head_price">
                Price
            </li>
        </ul>
        <%--<form:forEach items="${cart.product}" var="product">--%>
    <div id="cart_content"></div>
        <%--<ul class="cart_item">--%>

            <%--<li class="cart_img_col">--%>
                <%--<img src="http://localhost:8080/${product.image}">--%>
            <%--</li>--%>

            <%--<li class="cart_product_col">--%>
                <%--<p>${product.name} ${product.model. nameOfModel}</p>--%>
                <%--<span><strong>Size: </strong>XL</span>--%>
            <%--</li>--%>

            <%--<li class="cart_options_col">--%>
                <%--<span>Quantity: </span>--%>
                <%--<input type="number" min="1" value="1">--%>
            <%--</li>--%>

            <%--<li class="cart_price_col">--%>
                <%--<h2>$${product.price}</h2>--%>
            <%--</li>--%>
            <%--<li class="cart_del_col">--%>
               <%--<a href="deleteProdInCart/${product.id}"><img src="http://i.imgur.com/bI4oD5C.png"></a>--%>
            <%--</li>--%>
        <%--</ul>--%>
        <%--</form:forEach>--%>

</form:forEach>

    </div>
</div>
