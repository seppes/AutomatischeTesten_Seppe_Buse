*** Keywords ***
Open the app without tablenumber
    Open Browser  ${url_main}           Chrome

Open the app with tablenumber (7)
    Open Browser  ${url_test_table_7}   Chrome

Open the back-end
    Go To         ${url_back_end}

Click first porduct
    Wait Until Element Is Visible       class=css-ep7jyx
    Click Element                       class=css-ep7jyx

Favorite product
    Wait Until Element Is Visible       class=css-qsfdvb
    Click Element                       class=css-qsfdvb

Close info panel
    Click Element                       class=css-1pasgjo

Check if product in favorite list
    Click Element                       class=css-oc3vzn
    ${NameCheck}=                       Get Text  class=css-ep7jyx
    Should Contain  ${NameCheck}        Bavik  • 25CL 5.2%

Press "buy product"
    Wait Until Element Is Visible       //*[@id="top"]/div[4]/div/div/div[7]/button[2]
    Click Button                        //*[@id="top"]/div[4]/div/div/div[7]/button[2]

Check if message is correct
    Wait Until Element Is Visible       class=css-1501s6x
    ${Message}=                         Get Text  class=css-1501s6x
    Should Contain  ${Message}          Scan QR code op je tafel om te bestellen.

Click hamburger menu
    Wait Until Element Is Visible       class=css-vh5iu6
    Click Element                       class=css-vh5iu6

Click links in hamburger menu and check if url is correct
    Wait Until Element Is Visible       //*[@id="top"]/div[1]/div[1]/div/nav/div[1]/div/a
    Click Element                       //*[@id="top"]/div[1]/div[1]/div/nav/div[1]/div/a
    Location Should Be                  ${url_hamburgermenu_bierKaart}

    Click Element                       //*[@id="top"]/div[1]/div[1]/div/nav/div[2]/div/a
    Location Should Be                  ${url_hamburgermenu_andereDranken}

    Click Element                       //*[@id="top"]/div[1]/div[1]/div/nav/div[3]/div/a
    Location Should Be                  ${url_hamburgermenu_lunchEnHapjes}

Click "menu" button to go to the menucard
    Wait Until Element Is Visible       //*[@id="top"]/div[4]/div[1]/span/a
    Click Element                       //*[@id="top"]/div[4]/div[1]/span/a

Click "shopping cart" button to go to the order
    Wait Until Element Is Visible       //*[@id="top"]/div[1]/div[3]/a[2]/button
    Click Element                       //*[@id="top"]/div[1]/div[3]/a[2]/button

Click order button
    Wait Until Element Is Visible       class=css-1l7ratw
    Click Element                       class=css-1l7ratw

Click delete-order button
    Wait Until Element Is Visible       class=css-qsfdvb
    Click Element                       class=css-qsfdvb

Undo order
    Wait Until Element Is Visible       //*[@id="root"]/div/div[2]/div[1]/button[3]
    Click element                       //*[@id="root"]/div/div[2]/div[1]/button[3]
    sleep                               1s