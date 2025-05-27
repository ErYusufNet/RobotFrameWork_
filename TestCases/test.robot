*** Settings ***
Library    SeleniumLibrary


*** Variables ***



*** Test Cases ***
LoginTest
    open browser    https://demo.nopcommerce.com/   chrome
    click link    xpat:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    input text    id:Email  pavanoltraining@gmail.com
    input text    id:Password   Test@123
    click element    xpath://*[@id="main"]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button
    close browser







*** Keywords ***
