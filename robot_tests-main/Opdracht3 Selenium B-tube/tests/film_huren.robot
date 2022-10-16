*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website and login
Suite Teardown  Close browser
Library    String

*** Variables ***
${searchbarmovie}  //input[@placeholder="Search.."][@type="text"]

*** Test Cases ***

3. Na het huren van een film, komt het in de lijst met gehuurde films
    sleep  5s
    Input Text    //input[@placeholder="Search.."][@type="text"]    aladdin
    sleep  1s
    Press Keys  ${searchbarmovie}   ARROW_DOWN  RETURN
    sleep  5s
    Element Should Contain  //div[@class='css-rabwp9']  Aladdin

4. Na het huren van een film, dalen de credits met de juiste waarde

7. De zoekbalk helpt om een film op te zoeken

10. De zoekbalk vult resultaten aan