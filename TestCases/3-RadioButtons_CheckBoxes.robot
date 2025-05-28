# Working with radio buttons and check boxes

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}            https://proleed.academy/exercises/selenium/automation-practice-form-with-radio-button-check-boxes-and-drop-down.php
${name_field}     id:firstname
${surname_field}  id:lastname
${father_name}  name:fathername
${mother_name}  name:mothername
${idnumber}     id:identity_number

*** Test Cases ***
Testing
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Verify Name And Surname Fields
    Input Text    ${name_field}     yusuf
    Input Text    ${surname_field}  er
    select radio button    accountype   saving
    input text    ${father_name}    Bekir
    input text    ${mother_name}    Emel
    scroll element into view    id:passport
    select checkbox    id:passport
    scroll element into view    ${idnumber}
    input text    ${idnumber}   323298


    Sleep    15

*** Keywords ***
Verify Name And Surname Fields
    Element Should Be Visible    ${name_field}
    Element Should Be Enabled    ${name_field}
    Element Should Be Visible    ${surname_field}
    Element Should Be Enabled    ${surname_field}
 #robot TestCases\3-RadioButtons_CheckBoxes.robot
