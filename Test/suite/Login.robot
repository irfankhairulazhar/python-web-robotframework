*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Keywords/login-res.robot


*** Test Cases ***
Login
    [Tags]    login
    Openloginpage
    Inputcredential
    Buttonlogin
    Successlogin