{include file='header.tpl' h1='Список товаров'}
        <p>
            <a href="/products/add">Добавить</a>
        </p>

        <p>
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Название товара</th>
                        <th>Артикул</th>
                        <th>Цена</th>
                        <th>Количество на складе</th>
                        <th>Описнаие</th>
                        <th>&nbsp;</th>
                    </tr>
                </thead>

                <tbody>
                {foreach from=$products item=product}
                    <tr>
                        <td>{$product.id}</td>
                        <td>{$product.name}</td>
                        <td>{$product.article}</td>
                        <td>{$product.price}</td>
                        <td>{$product.amount}</td>
                        <td>{$product.description}</td>
                        <td>
                            <a href='/products/edit?id={$product.id}'>Редактировать</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <form action="/products/delete" method="post" style="display: inline"><input type="hidden" name="id" value='{$product.id}'"><input type="submit" value="Удалить"></form>
                        </td>
                    </tr>
                {/foreach}
                </tbody>
            </table>
        </p>

{include file='bottom.tpl'}