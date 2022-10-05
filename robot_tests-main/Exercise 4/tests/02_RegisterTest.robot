*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Register without email
    Click Element    css:a[href='https://practice.automationtesting.in/my-account/']
    Sleep  1s
    Input Text  css:#reg_password   Register12345678!
    Sleep  1s
    Click Element    css:input[value='Register']
    Sleep  1s
    Element Text Should Be    css:ul[class='woocommerce-error'] li    Error: Please provide a valid email address.
    Sleep  1s

Register without password
    Click Element    css:a[href='https://practice.automationtesting.in/my-account/']
    Sleep  1s
    Input Text  css:#reg_email   DangerZoner69@hetemail.kom
    Sleep  1s
    Click Element    css:input[value='Register']
    Sleep  1s
    Element Text Should Be    css:ul[class='woocommerce-error'] li    Error: Please enter an account password.
    Sleep  1s