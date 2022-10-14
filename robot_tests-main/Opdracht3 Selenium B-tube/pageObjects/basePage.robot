*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Set Window Size  1680  1050
    Sleep   10s