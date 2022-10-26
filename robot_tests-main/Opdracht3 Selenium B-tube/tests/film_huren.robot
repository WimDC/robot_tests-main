*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website and login
Suite Teardown  Close browser
Library    String

*** Variables ***
${searchbarmovie}  //input[@placeholder="Search.."][@type="text"]
${movietorent}=                            Aladdin
${partofmovietorent}=                       Alad
${xbuttonmovietrailer}=     //*[@id="CloseModal"]

*** Test Cases ***

10. De zoekbalk vult resultaten aan
    sleep  3s
    Input Text    ${searchbarmovie}    ${partofmovietorent}
    sleep  1s
    Press Keys  ${searchbarmovie}   ARROW_DOWN  RETURN
    sleep  3s
    Element Should Contain  //div[@class='css-rabwp9']  ${movietorent}
    Sleep  2s
    Click Button  ${xbuttonmovietrailer}

7. De zoekbalk helpt om een film op te zoeken
    sleep  3s
    Input Text    ${searchbarmovie}    ${movietorent}
    sleep  1s
    Press Keys  ${searchbarmovie}   ARROW_DOWN  RETURN
    sleep  3s
    Element Should Contain  //div[@class='css-rabwp9']  ${movietorent}
    Sleep  2s
    Click Button  ${xbuttonmovietrailer}

4. Na het huren van een film, dalen de credits met de juiste waarde
    sleep  3s
    Buy Credits
    Click Element    ${profilepage}
    sleep  2s
    ${initial_credits}=    Get Text    //p[@class="css-cpr2ex"][3]
    ${initial_credits}=     Convert To Integer    ${initial_credits}
    Click Element    ${homepage}
    sleep  3s
    Input Text    ${searchbarmovie}    ${movietorent}
    sleep  1s
    Press Keys  ${searchbarmovie}   ARROW_DOWN  RETURN
    sleep  3s
    Element Should Contain  //div[@class='css-rabwp9']  ${movietorent}
    Sleep  2s
    Click Button  //button[@id='RentMovieButton']
    Sleep  3s
    Click Element    ${profilepage}
    sleep  2s
    ${new_credits}=    Get Text    //p[@class="css-cpr2ex"][3]
    ${new_credits}=     Convert To Integer    ${new_credits}
    ${initial_credits}=     Evaluate    ${initial_credits} - 3
    Should Be Equal As Numbers    ${initial_credits}    ${new_credits}

3. Na het huren van een film, komt het in de lijst met gehuurde films
    Click Element    ${homepage}
    sleep  2s
    Click Element    //a[@href='#/orders']//button[@id='OrdersPageButton']
    sleep  2s
    Page Should Contain    ${movietorent}