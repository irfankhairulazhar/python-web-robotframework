*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                      https://qademo.onebrick.io/
${browser}                  chrome
${fullname}                 //input[@id='firstName']
${lastname}                 //input[@id='lastName']
${email}                    //input[@id='email']
${phonenumber}              //input[@id='phoneNumber']
${address}                  //input[@id='address']
${password}                 //input[@id='password']
${reinputpassword}          //input[@id='confirm_password']
${buttonregister}           //input[@name='register']
${popupsuccess}             //h2[@class='swal2-title']
${emailtext}                //div[@class='swal2-html-container']
${inputfullname}            irfan
${inputlastname}            azhar
${inputnumber}              084343847318
${inputemail}               ggg8sss.com
${inputaddress}             bekasi bp03
${inputpassword}            123456
${inputconfirmpassword}     123456
${sucesstsxt}               Success
${chekemailtext}            Check your email to confirm your registration

*** Keywords ***
Launchingbrowser
    open browser        ${url}      ${browser}
    maximize browser window

InputingValue
    input text    ${fullname}           ${inputfullname}
    sleep    2
    input text    ${lastname}           ${inputlastname}
    sleep    2
    input text    ${email}              ${inputemail}
    sleep    2
    input text    ${phonenumber}        ${inputnumber}
    sleep    2
    input text    ${address}            ${inputaddress}
    sleep    2
    input text    ${password}           ${inputpassword}
    sleep    2
    input text    ${reinputpassword}    ${inputconfirmpassword}

Buttonregister
    sleep    2
    click element    ${buttonregister}

SuccessRegister
    sleep    2
    element text should be      ${popupsuccess}     ${sucesstsxt}
    element text should be      ${emailtext}        ${chekemailtext}

*** Test Cases ***
register
    [Tags]    register
    Launchingbrowser
    InputingValue
    Buttonregister
    SuccessRegister
    close browser


