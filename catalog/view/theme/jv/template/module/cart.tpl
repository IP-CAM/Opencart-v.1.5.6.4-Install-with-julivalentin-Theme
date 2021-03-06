<div id="cart">
    <a class="top-icons cart" href="javascript:void(0);" title="<?php echo $heading_title; ?>"></a>

    <div class="content">
        <?php if ($products || $vouchers) { ?>
            <div class="mini-cart-info">
                <table>
                    <?php foreach ($products as $product) { ?>
                        <tr>
                            <td class="image"><?php if ($product['thumb']) { ?>
                                    <a href="<?php echo $product['href']; ?>"><img
                                            src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"
                                            title="<?php echo $product['name']; ?>"/></a>
                                <?php } ?></td>
                            <td class="name qty total"><a
                                    href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>

                                <div class="low-block">
                                    <div class="quantity"><?php echo $qty; ?>:<?php echo $product['quantity']; ?></div>
                                    <div class="total"><?php echo $product['total']; ?></div>
                                </div>
                            </td>
                        </tr>
                    <?php } ?>
                    <?php foreach ($vouchers as $voucher) { ?>
                        <tr>
                            <td class="image"></td>
                            <td class="name"><?php echo $voucher['description']; ?></td>
                            <td class="quantity">x&nbsp;1</td>
                            <td class="total"><?php echo $voucher['amount']; ?></td>
                            <td class="remove"><img src="catalog/view/theme/default/image/remove-small.png"
                                                    alt="<?php echo $button_remove; ?>"
                                                    title="<?php echo $button_remove; ?>"
                                                    onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');"/>
                            </td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
            <div class="mini-cart-total">
                <?php $lt = count($totals) - 1;
                echo $totals[$lt]['text']; ?>
            </div>
            <div class="checkout"><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
        <?php } else { ?>
            <div class="empty"><?php echo $text_empty; ?></div>
        <?php } ?>
    </div>
</div>