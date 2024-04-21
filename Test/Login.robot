*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                      https://qademo.onebrick.io/login
${browser}                  chrome
${username}                 //input[@id='your_email']
${password}                 //input[@id='password']
${login}                    //input[@name='login']
${successlogin}             //h2[@class='swal2-title']
${wordingwelcome}           //div[@class='swal2-html-container']
${inputemail}               ggg1@sss.com
${inputpassword}            123456
${textsuccesslogin}         Success
${textwelcomewording}       Welcome Back, Agent Doomsday!



*** Keywords ***
Openloginpage
    open browser    ${url}  ${browser}
    maximize browser window

Inputcredential
    input text       ${username}   ${inputemail}
    sleep    2
    input text       ${password}   ${inputpassword}
Buttonlogin
    sleep    2
    click element    ${login}
Successlogin
    sleep    2
    handle alert    dismiss
    element text should be    ${successlogin} ${textsuccesslogin}
    sleep    2
    element text should be    ${wordingwelcome} ${textwelcomewording}



*** Test Cases ***
Login
    [Tags]    login
    Openloginpage
    Inputcredential
    Buttonlogin