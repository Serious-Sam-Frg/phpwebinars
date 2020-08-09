<?php

$id = $_POST['id'] ?? 0;
$id = (int) $id;

if (!$id) {
    die("Error with id");
}

$delete = delete_product_by_id($connect, $id);

if (mysqli_affected_rows($connect)) {
    header('Location: /products/list');
} else {
    die("some error with delete row");
}
