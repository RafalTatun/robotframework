*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
InputTestBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     Facebook – zaloguj się lub zarejestruj
    CreateNewAcc

*** Keywords ***
CreateNewAcc
    input text    id:email  bleble@gmail.com
    ${"nameacc"}    set variable    id:pass
    input text  ${"nameacc"}    Rafal
    sleep   5
    clear element text  ${"nameacc"}
    sleep   3
    close browser