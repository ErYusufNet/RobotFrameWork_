*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}         chrome
${url}             https://proleed.academy/exercises/selenium/automation-practice-form-with-radio-button-check-boxes-and-drop-down.php

${name}            id:firstname
${surname}         id:lastname
${father_name}     name:fathername
${mother_name}     name:mothername
${id_number}       id:identity_number
${checkbox_id}     id:passport

*** Test Cases ***
Testing
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Verify Name Fields
    Sleep    2
    Fill Personal Information
    Sleep    2
    Select Account Type And Passport
    Sleep    2
    Enter Identity Number
    Sleep    2
    Close Browser

*** Keywords ***
Verify Name Fields
    Element Should Be Visible    ${name}
    Element Should Be Enabled    ${name}
    Element Should Be Visible    ${surname}
    Element Should Be Enabled    ${surname}
    Element Should Be Visible    ${father_name}
    Element Should Be Enabled    ${father_name}
    Element Should Be Visible    ${mother_name}
    Element Should Be Enabled    ${mother_name}

Fill Personal Information
    Input Text    ${name}         yusuf
    Input Text    ${surname}      er
    Input Text    ${father_name}  bekir
    Input Text    ${mother_name}  emel

Select Account Type And Passport
    Select Radio Button          accountype    saving
    Scroll Element Into View     ${checkbox_id}
    Select Checkbox              ${checkbox_id}

Enter Identity Number
    Scroll Element Into View     ${id_number}
    Input Text                   ${id_number}    323298
