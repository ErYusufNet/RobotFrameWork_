#User Registration Form Automation Project
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${firstname}    id:firstname
${surname}      id:lastname


*** Test Cases ***
UserRegister

    open browser    https://proleed.academy/exercises/selenium/automation-practice-form-with-radio-button-check-boxes-and-drop-down.php     chrome
    maximize browser window
    FillInformation
    Verify
    IdType
    Birth
    sleep    5



*** Keywords ***
FillInformation
    input text    ${firstname}  yusuf
    input text    ${surname}   er
Verify
    element should be visible    ${firstname}
    element should be enabled    ${firstname}
    element should be visible    ${surname}
    element should be enabled    ${surname}
GenderMaritalStatus
    scroll element into view    id:gender
    select radio button     gender  male
    scroll element into view    id:marital_status
    select radio button     marital_status  married
IdType
    Sleep    1s
    Scroll Element Into View    id:passport
    Select Checkbox    id:passport

Birth
    select from list by label   id:dob_month    September
    select from list by label   id:dob_date     15
    select from list by label   id:dob_year     1997



