*** Settings ***
Library         SeleniumLibrary
Resource        keywords.resource
Library         DataDriver    file=${CURDIR}/TestData/LoginData.csv
Suite Setup     Open my website
Suite Teardown  Close my website
Test Template   Invalid Login

*** Variables ***
${username}     ewqewq
${password}     ewqewq
*** Test Cases ***
Login from Excel      ${username}       ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Open Login Page
    Input Informations    ${username}    ${password}
    Click Login
    Error Message
