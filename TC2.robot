*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
| test 1 
| | log | this is test one
InputTestBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     Facebook – zaloguj się lub zarejestruj
    CreateNewAcc

*** Keywords ***
| change xxx to your email and password
CreateNewAcc
    input text    id:email  bleble@gmail.com
    ${"nameacc"}    set variable    id:pass
    input text  ${"nameacc"}    Rafal
    sleep   5
    clear element text  ${"nameacc"}
    sleep   3
    close browser