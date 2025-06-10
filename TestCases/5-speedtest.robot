
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
    ${spead}=   get selenium speed
    log to console    ${spead}
    open browser    https://demowebshop.tricentis.com/register  chrome
    maximize browser window
    set selenium speed    2 seconds
    select radio button    Gender   M
    fill personal information
    click button    id:register-button
    sleep    5
    ${spead}=   get selenium speed
    log to console    ${spead}

*** Keywords ***
Fill Personal Information
    input text    ${name}   yusuf
    input text    ${surname}    er
    input text    ${email}  yusufer.net@hotmail.com
    input text    ${password}   yusuf.01
    input text    ${password2}  yusuf.01



