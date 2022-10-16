*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website and login
Suite Teardown  Close browser
Library    String

*** Variables ***

*** Test Cases ***

1. Een profiel toon de correcte voor- en achternaam
    sleep  5s
    Click Element    css:body > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > header:nth-child(3) > div:nth-child(4) > a:nth-child(2) > button:nth-child(1)
    sleep  2s
    Element Text Should Be    //p[@class='css-cpr2ex'][1]  wim
    Element Text Should Be    //div[@class='css-kcntxh']/p[@class='css-cpr2ex'][1]  de cuyper

6. Een profiel heeft een avatar
    Wait Until Element Is Visible    css:.css-1wu7nrr

5. Negatieve credits kunnen niet aangekocht worden
    Click Element  //div[@class='css-1uhaiyw']/a[2]/button
    Sleep  2s
    ${initial_credit}  Get Value    //p[@class='css-cpr2ex'][3]
    Click Element  //div[@class='css-kcntxh']/button[@class='css-1e9674f']
    Sleep  2s
    Input Text    //form/input[@class='css-1ml9hd4']  -5
    Sleep  2s
    Click Element  //form/button[@class='css-1e9674f']
    Sleep  2s
    ${new_credit}  Get Value  //p[@class='css-cpr2ex'][3]
    Should Be Equal    ${initial_credit}    ${new_credit}

3.Na het huren van een film, komt het in de lijst met gehuurde films

4. Na het huren van een film, dalen de credits met de juiste waarde

7. De zoekbalk helpt om een film op te zoeken

10. De zoekbalk vult resultaten aan