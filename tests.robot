*** Settings ***
Library  SeleniumLibrary
Resource  Resources/keywords.robot

*** Variables ***
${url_main}  https://verapeeters-thomasmore.github.io/menus/#/
${url_hamburgermenu_bierKaart}  https://verapeeters-thomasmore.github.io/menus/#/menucard#Onze%20Bierkaart
${url_hamburgermenu_andereDranken}  https://verapeeters-thomasmore.github.io/menus/#/menucard#Andere%20dranken
${url_hamburgermenu_lunchEnHapjes}  https://verapeeters-thomasmore.github.io/menus/#/menucard#Lunch%20en%20hapjes
${url_test_table_7}  https://verapeeters-thomasmore.github.io/menus/#/table/7
${url_back_end}  https://verapeeters-thomasmore.github.io/menubackend/

*** Test Cases ***
Click product, favorite and check if on favorite list
    [Setup]
        Open the app without tablenumber
        Click first porduct
        Favorite product
        Check if product in favorite list
    [Teardown]  Close Browser

Click product, check if message pops up if not linked to table
    [Setup]
        Open the app without tablenumber
        Click first porduct
        Press "buy product"
        Check if message is correct
    [Teardown]  Close Browser

Click hamburgermenu, check if links are correct
    [Setup]
        Open the app without tablenumber
        Click hamburger menu
        Click links in hamburger menu and check if url is correct
    [Teardown]  Close Browser

Open tablenumber(7) and order (undo order in back-end afterwards)
    [Setup]
        Open the app with tablenumber (7)
        Click "menu" button to go to the menucard
        Click first porduct
        Press "buy product"
        Close info panel
        Click "shopping cart" button to go to the order
        Click order button
        Open the back-end
        Undo order
    [Teardown]  Close Browser

Open tablenumber(7) select products and delete order
    [Setup]
        Open the app with tablenumber (7)
        Click "menu" button to go to the menucard
        Click first porduct
        Press "buy product"
        Close info panel
        Click "shopping cart" button to go to the order
        Click delete-order button
    [Teardown]  Close Browser