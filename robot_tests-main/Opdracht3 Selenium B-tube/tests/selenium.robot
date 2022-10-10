*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

1.De zoekbalk helpt om een film op te zoeken

2.Je kan horizontaal door genres scrollen
    Maximize Browser Window
    Wait Until Element Is Visible    //div[@id='Comedy Movies']//div[@class='css-nlgfro']
    Input Text    //input[@id='mui-83534']      Aladdin
    Sleep  5s
    Click Element At Coordinates    //div[@id='Comedy Movies']//div[@class='css-nlgfro']    50    50
    Sleep  5s

