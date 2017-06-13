<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <form:forEach items="${cart.product}" var="product">

        <ul class="cart_item">

            <li class="cart_img_col">
                <img src="http://localhost:8080/${product.image}">
            </li>

            <li class="cart_product_col">
                <p>${product.name} ${product.model. nameOfModel}</p>
                <span><strong>Size: </strong>XL</span>
            </li>

            <li class="cart_options_col">
                <span>Quantity: </span>
                <input type="number" min="1" value="1">
            </li>

            <li class="cart_price_col">
                <h2>$${product.price}</h2>
            </li>
            <li class="cart_del_col">
               <a href="deleteProdInCart/${product.id}"><img src="http://i.imgur.com/bI4oD5C.png"></a>
            </li>
        </ul>
        </form:forEach>

</form:forEach>

    </div>
</div>
