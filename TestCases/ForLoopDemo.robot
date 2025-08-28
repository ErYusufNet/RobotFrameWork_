*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com/
${BROWSER}  chrome

*** Test Cases ***
Test for loop
    [Documentation]    test case to demonstrate for loop in robot framework
    Set Selenium Implicit Wait    5s

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Cookie banner (varsa) kapat
    Run Keyword And Ignore Error    Click Element    id=L2AGLb

    # Arama
    Wait Until Element Is Visible    name=q    10s
    Input Text    name=q    RCV Academy
    Press Keys    name=q    ENTER

    # Sonuç başlıklarını yakala (daha sağlam XPath)
    Wait Until Page Contains Element    xpath=//div[@id='rso']//h3    10s
    @{results_on_page}=    Get WebElements    xpath=//div[@id='rso']//h3

    FOR    ${el}    IN    @{results_on_page}
        ${text}=    Get Text    ${el}
        Log To Console    ${text}
    END

    Close Browser
