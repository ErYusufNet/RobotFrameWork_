*** Settings ***
Library         SeleniumLibrary
Resource        keywords.resource
Suite Setup     Open My Website
Suite Teardown  Close My Website
Test Template   Invalid Login

*** Test Cases ***                 USERNAME                 PASSWORD
Right user empty pass              admin@yourstore.com      ${EMPTY}
Right user wrong pass              admin@yourstore.com      xyz
Wrong user right pass              adm@yourstore.com        admin
Wrong user empty pass              adm@yourstore.com        ${EMPTY}
Wrong user wrong pass              adm@yourstore.com        xyz

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Set Selenium Speed           0.5 seconds

    Open Login Page
    Input Informations    ${username}    ${password}
    Click Login
    Error Message
