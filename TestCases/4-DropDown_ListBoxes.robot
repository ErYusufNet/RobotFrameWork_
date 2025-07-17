# Working with radio buttons and check boxes

*** Settings ***
Library    SeleniumLibrary





*** Variables ***
${browser}         chrome
${url}             https://proleed.academy/exercises/selenium/automation-practice-form-with-radio-button-check-boxes-and-drop-down.php


*** Test Cases ***
Testing
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Select From List By Index    prefix    1
    Input Text    id:firstname    Yusuf
    Input Text    id:lastname    Er
    Select Radio Button   accountype    saving

    Select Checkbox    id:passport
    Select Checkbox    id:studentid
    Input Text    id:identity_number    989898
    Select From List By Label  dob_month  September
    Select From List By Index   dob_date     15
    Select From List By Label    dob_year    1997
    Select Radio Button    marital_status    divorced
    Select From List By Label
    
    Sleep    10




*** Keywords ***


