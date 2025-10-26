*** Variables ***
${BTN_BASKET}              xpath=//android.widget.RelativeLayout[@content-desc="View cart"]   
${TEXT_BASKET_EMPTY}       xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/noItemTitleTV"]
${BTN_ADD_ARTICLE}         id=com.saucelabs.mydemoapp.android:id/cartBt
${BTN_REMOVE_ARTICLE}      id=com.saucelabs.mydemoapp.android:id/removeBt
${ARTICLE_ITEM}            xpath=(//android.widget.ImageView[@content-desc='Product Image'])[1]
${BTN_GO_SHOPPING}         id=com.saucelabs.mydemoapp.android:id/shoppingBt
${ARTICLE_ITEM_BASKET}     id=com.saucelabs.mydemoapp.android:id/productRV
${BTN_MENU}                id=com.saucelabs.mydemoapp.android:id/menuIV
${BTN_CATALOG}             xpath=//android.widget.TextView[@resource-id="com.saucelabs.mydemoapp.android:id/itemTV" and @text="Catalog"]
