*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://admin-demo.nopcommerce.com/
${BROWSER}  chrome

*** Keywords ***
Open My Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Close My Website
    Close All Browsers

Open Login Page
    Go To    ${URL}

Input Informations
    [Arguments]    ${username}    ${password}
    Clear Element Text    id:Email
    Clear Element Text    id:Password
    Input Text    id:Email       ${username}
    Input Text    id:Password    ${password}

Click Login
    Click Element    xpath://button[@type='submit']

Error Message
    Wait Until Page Contains    Login was unsuccessful.    5s
