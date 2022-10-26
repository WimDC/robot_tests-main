*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Set Window Size  1680  1050
    Sleep   5s

Open My Website and login
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}
    Set Window Size  1680  1050
    Sleep   5s
    Click Element    css:#SignInButton.css-ixez3h
    sleep  1s
    Input Text    css:#SignInEmail    decuyperwim@hotmail.com
    Input Text    css:#SignInPassword    abc123
    Click Element    css:#SignInButtonComplete

Buy Credits
    Click Element    ${profilepage}
    sleep  2s
    Click Element    //button[@class='css-1e9674f']
    Input Text    //input[@placeholder='5']    5
    Click Element    //button[@type='submit']
    sleep  2s
    Click Element    ${homepage}
