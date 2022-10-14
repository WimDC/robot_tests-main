*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

1. Een profiel toon de correcte voor- en achternaam
    Click Element    css:#SignInButton.css-ixez3h
    sleep  1s
    Input Text    css:#SignInEmail    decuyperwim@hotmail.com
    Input Text    css:#SignInPassword    abc123
    Click Element    css:#SignInButtonComplete
    sleep  2s
    Click Element    css:body > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > header:nth-child(3) > div:nth-child(4) > a:nth-child(2) > button:nth-child(1)
    sleep  2s
    Element Text Should Be    //p[@class='css-cpr2ex'][1]  wim
    Element Text Should Be    //div[@class='css-kcntxh']/p[@class='css-cpr2ex'][1]  de cuyper

2. Na het inloggen, kom je op de juiste pagina terecht
    Click Element    css:#SignInButton.css-ixez3h
    sleep  1s
    Input Text    css:#SignInEmail    decuyperwim@hotmail.com
    Input Text    css:#SignInPassword    abc123
    Click Element    css:#SignInButtonComplete
    sleep  2s
    Wait Until Element Is Visible    css:div[role='combobox']

3. Na het huren van een film, komt het in de lijst met gehuurde films
4. Na het huren van een film, dalen de credits met de juiste waarde
5. Negatieve credits kunnen niet aangekocht worden
6. Een profiel heeft een avatar
7. De zoekbalk helpt om een film op te zoeken
8. Foutief inloggen geef een feedback voor foute username
9. Foutief inloggen geef een feedback voor foute paswoord
10. De zoekbalk vult resultaten aan