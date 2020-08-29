*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://www.facebook.com/

*** Test Cases ***
| test 1 
| | log | this is test one
LoginTest
    open browser    ${url}  chrome
    LoginAttempt
    close browser


*** Keywords ***
| change xxx to your email and password
LoginAttempt
    input text  id:email   xxx@gmail.com
    input text  id:pass   xxx
    click element   id:u_0_d