*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Set Window Size  1680  1050
    Sleep   10s

Open My Website and login
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Set Window Size  1680  1050
    Sleep   10s
    Click Element    css:#SignInButton.css-ixez3h
    sleep  1s
    Input Text    css:#SignInEmail    decuyperwim@hotmail.com
    Input Text    css:#SignInPassword    abc123
    Click Element    css:#SignInButtonComplete

