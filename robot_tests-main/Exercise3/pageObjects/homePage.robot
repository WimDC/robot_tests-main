*** Settings ***
Resource  basePage.robot

*** Variables ***
${ACCEPT_COOKIES}=    xpath://*[@id="koekieBar"]/div[1]/div[2]/button[1]
${ABOUTUS_TXT}=       xpath://a[@class='smartphones']

*** Keywords ***

Go To Home
    Click Element  ${ACCEPT_COOKIES}

Get Smartphones text
    Wait Until Element Is Visible  ${ABOUTUS_TXT}
    ${text}=  Get Text  ${ABOUTUS_TXT}
    [Return]  ${text}

Login with unexisting Account
    Go To Homepage

