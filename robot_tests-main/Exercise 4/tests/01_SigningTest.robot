*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login Without Email Address
    Click Element    css:a[href='https://practice.automationtesting.in/my-account/']
    Sleep  1s
    Input Text    css:#password    kakapipi
    Sleep  1s
    Click Button    css:input[value='Login']
    Sleep  1s
    Element Text Should Be    css:ul[class='woocommerce-error']    Error: Username is required.

Login With Unexisting Account
    Click Element    css:a[href='https://practice.automationtesting.in/my-account/']
    Sleep  1s
    Input Text    css:#username    pipidoodoo
    Sleep  1s
    Input Text    css:#password    kakapipi
    Sleep  1s
    Click Button    css:input[value='Login']
    Sleep  1s
    Element Text Should Be    css:ul[class='woocommerce-error']  Error: the username pipidoodoo is not registered on this site. If you are unsure of your username, try your email address instead.

Login Without Password
    Click Element    css:a[href='https://practice.automationtesting.in/my-account/']
    Sleep  1s
    Input Text    css:#username    pipidoodoo
    Sleep  1s
    Click Button    css:input[value='Login']
    Sleep  1s
    Element Text Should Be    css:ul[class='woocommerce-error']    Error: Password is required.