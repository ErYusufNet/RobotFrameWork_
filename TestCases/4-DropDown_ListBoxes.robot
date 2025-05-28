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
    select from list by index   id:dob_month    9
    select from list by index   id:dob_date     15
    select from list by label   id:dob_year     1997
    scroll element into view    id:single
    select radio button    marital_status   single
    sleep    5




*** Keywords ***
#robot TestCases\4-DropDown_listBoxes.robot

