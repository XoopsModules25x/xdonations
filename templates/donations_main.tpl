<!-- 
<table style="width: 100%;">
    <tr style="vertical-align: top;">
        <td style="width: 73%;">
        <h2><{$DON_TITLE}></h2>
        <{$DON_TEXT}></td>
        <td style="width: 2%;">&nbsp;</td>
        <td style="width: 25%;">
        <table class="outer">
            <tr class="head">
                <td><{$MAKEADON}></td>
            </tr>
            <tr>
                <td>
                <form action="https://<{$PAYPAL_URL}>/cgi-bin/webscr"
                target="paypal" method="post"> <{$SELECTAMT}><br />
                <select name="amount">
                    <{$DONATION_AMOUNTS}>
                </select> <br />
                <br />
                <table>
                    <tr>
                        <td colspan="2"><{$SHOWNAME}></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="os0" checked value="Yes"></td>
                        <td><{$DON_NAME_YES}></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="os0" value="No"></td>
                        <td><{$DON_NAME_NO}></td>
                    </tr>
                </table>

                <input type="hidden" name="cmd" value="_xclick" /> <input
                    type="hidden" name="business" value="<{$PP_RECEIVER_EMAIL}>"
                /> <input type="hidden" name="item_name" value="<{$PP_ITEMNAME}>"
                /> <input type="hidden" name="item_number" value="110" /> <input
                    type="hidden" name="rm" value="2" /> <input type="hidden"
                    name="notify_url" value="<{$xoops_url}>/modules/<{$DON_DIR}>/ipnppd.php"
                /> <input type="hidden" name="on0" value="List your name? " /> <input
                    type="hidden" name="no_shipping" value="<{$PP_NO_SHIP}>" />
                <input type="hidden" name="currency_code" value="<{$PP_CURR_CODE}>"
                /> <input type="hidden" name="cn" value="Comments" /> <input
                    type="hidden" name="custom" value="<{$CUSTOM}>" /> <input
                    type="hidden" name="cancel_return" value="<{$PP_CANCEL_URL}>"
                /> <input type="hidden" name="return" value="<{$PP_TY_URL}>"
                /> <input type="hidden" name="image_url" value="<{$PP_IMAGE_URL}>"
                /><br />
                <br />
                <input type="submit" value="<{$SUBMIT_BUTTON}>" border="0"
                name="I1" /></form>
                </td>
            </tr>
        </table>
        </td>
    </tr>
</table>
