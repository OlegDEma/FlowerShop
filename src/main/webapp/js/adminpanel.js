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
// function menu(e) {
//     if(e == 'createProduct'){
//         $('#menu').css('display','block');
//         $('#menu3').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'modifyProduct'){
//         $('#menu').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu2').css('display','block');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'createBrand'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu4').css('display','none');
//         $('#menu3').css('display','block');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'createModel'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu4').css('display','block');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'createManager'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu4').css('display','block');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'createCategory'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','block');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'createSubcategory'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','block');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'createDelivery'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','block');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','none');
//     }else if(e == 'Sale'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','block');
//         $('#menu9').css('display','none');
//     }else if(e == 'User'){
//         $('#menu').css('display','none');
//         $('#menu2').css('display','none');
//         $('#menu3').css('display','none');
//         $('#menu4').css('display','none');
//         $('#menu5').css('display','none');
//         $('#menu6').css('display','none');
//         $('#menu7').css('display','none');
//         $('#menu8').css('display','none');
//         $('#menu9').css('display','block');
//     }
// }
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
    // $.ajax({
    //     url: '/products/'+val,
    //     // type:"POST",
    //     async  : false,
    //
    //     cache  : false,
    //     data:({typeOfSort : sort}),
    //     method: "GET",
    //     success : function () {
    //
    //
    //     // location.reload();
    //
    //     }
    //
    // })
    window.location.href ="http://localhost:8080/products/Phone/"+sort;
}

function nextPage() {
    $.ajax({
        url: 'nextPage',
        data:({begin : $('#begin').attr('value'), end :  $('#end').attr('value') , page :  $('#page').attr('value') }),
        method: "GET",
        success : function () {


            location.reload();

        }

    })
}
function prevPage() {
    $.ajax({
        url: 'prevPage',
        data:({begin : $('#begin').attr('value'), end :  $('#end').attr('value') , page :  $('#page').attr('value') }),
        method: "GET",
        success : function () {


            location.reload();

        }

    })
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