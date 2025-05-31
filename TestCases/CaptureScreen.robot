*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    name:username    10s
    Input Text    name:username    Admin
    Input Text    name:password    admin123

    Sleep    2
    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img     C:/Users/YusufEr/PycharmProjects/RobotFrameWork/Logo.png
    Capture Page Screenshot     C:/Users/YusufEr/PycharmProjects/RobotFrameWork/LoginPage.png
    Close Browser
