*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser
Library    String

*** Variables ***

*** Test Cases ***

8. Foutief inloggen geef een feedback voor foute username
    Click Element    css:#SignInButton.css-ixez3h
    sleep  1s
    Input Text    css:#SignInEmail  DangerZoner69@hetemail.kom
    Input Text    css:#SignInPassword    abc123
    Click Element    css:#SignInButtonComplete
    sleep  2s
    Element Text Should Be    css:div[class='css-1y9e552'] code    This email has not been registered.

9. Foutief inloggen geef een feedback voor foute paswoord
    Click Element    css:#SignInButton.css-ixez3h
    sleep  1s
    Input Text    css:#SignInEmail  decuyperwim@hotmail.com
    Input Text    css:#SignInPassword    lkhcnid641818
    Click Element    css:#SignInButtonComplete
    sleep  2s
    Element Text Should Be    css:div[class='css-1y9e552'] code    Email or password incorrect.

2. Na het inloggen, kom je op de juiste pagina terecht
    Click Element    css:#SignInButton.css-ixez3h
    sleep  1s
    Input Text    css:#SignInEmail    decuyperwim@hotmail.com
    Input Text    css:#SignInPassword    abc123
    Click Element    css:#SignInButtonComplete
    sleep  2s
    Wait Until Element Is Visible    css:div[role='combobox']
    ${titlehomepageloggedin}  Get Title
    Should Be Title Case    ${titlehomepageloggedin}