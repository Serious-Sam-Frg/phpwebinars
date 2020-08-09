<?php

if (!empty($_POST)) {
    $product = get_product_from_post();
    $inserted = add_product($connect, $product);

    if ($inserted) {
        header('Location: /products/list');
    } else {
        die("some insert error");
    }

}

$smarty->display('products/add.tpl');
