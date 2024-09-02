*** Settings ***
Library    SeleniumLibrary
Resource    ../Variables/test-data.robot

*** Variables ***
${url}                      https://www.saucedemo.com/
${browser}                  chrome
${username}                 //input[@id='user-name']
${password}                 //input[@id='password']
${login}                    //input[@id='login-button']
${successlogin}             //span[@class='title']
${wordingwelcome}           //div[@class='swal2-html-container']


*** Keywords ***
Openloginpage
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --disable-gpu
    Open Browser    ${url}    ${browser}    options=${chrome options}
    maximize browser window

Inputcredential
    input text       ${username}   ${inputemail}
    sleep    2
    input text       ${password}   ${inputpassword}
Buttonlogin
    sleep    2
    click element    ${login}
Successlogin
    Wait Until Element Is Visible    ${successlogin}
    ${element_text}=    Get Text    ${successlogin}
    Log    The actual text in the user name field is: ${element_text}
    Should Be Equal    ${element_text}    ${textsuccesslogin}

    Run Keyword If    '${element_text}' == '${textsuccesslogin}'    Log To Console    Login was successful with message: ${textsuccesslogin}
    Run Keyword If     '${element_text}' == '${textsuccesslogin}'    Log To Console    Login failed. Expected message: ${textsuccesslogin}, but got: ${element_text}
