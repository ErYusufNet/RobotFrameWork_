

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${name}     id:FirstName
${surname}  id:LastName
${email}    id:Email
${password}    id:Password
${password2}   id:ConfirmPassword


*** Test Cases ***
RegTest

    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    #set selenium implicit wait    10 seconds #bulunamayan elementleri bulmak icin 10 saniye bekler
    select radio button    Gender   M
    fill personal information
    click button    id:register-button



*** Keywords ***
Fill Personal Information
    input text    ${name}   yusuf
    sleep    1
    input text    ${surname}    er
    sleep    1
    input text    ${email}  yusufer.net@hotmail.com
    sleep    1
    input text    ${password}   yusuf.01
    sleep    1
    input text    ${password2}  yusuf.01
    sleep    1



