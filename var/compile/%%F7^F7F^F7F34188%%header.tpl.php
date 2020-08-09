<?php /* Smarty version 2.6.31, created on 2020-08-02 23:00:49
         compiled from header.tpl */ ?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Список товаров</title>
    <?php echo '
        <style>
            * {
                box-sizing: border-box;
            }
            html, body {
                margin: 0;
                padding: 0;
                font: normal 13px Arial, Helvetica, sans-serif;
                background: #e2e2e2;
            }
            .site-wrapper {
                width: 980px;
                margin: 0 auto;
                background: #fff;
                padding: 20px 30px;
            }

            .table {
                border-spacing: 0;
                border-collapse: collapse;
            }

            .table th {
                border: 1px solid #333;
                padding: 5px 5px;
                background: rgba(0, 0, 0, 0.1);
            }

            .table td {
                border: 1px solid #333;
                padding: 3px 5px;
            }

            .form {

            }

            .form.f400p {
                width: 400px;
            }

            .form-element {
                padding: 5px 10px;
            }

            .form-element .label {
                display: block;
                font-weight: bold;
            }

            input[type=\'text\'], input[type=\'number\'], textarea {
                width: 100%;
            }

        </style>
    '; ?>

</head>
<body>
<div class="site-wrapper">
    <?php if ($this->_tpl_vars['h1']): ?><h1><?php echo $this->_tpl_vars['h1']; ?>
</h1><?php endif; ?>