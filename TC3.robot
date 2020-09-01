*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome

*** Test Cases ***
Test with Radio button and Text
    open browser    ${url}  ${browser}
    maximize browser window

    select radio button     sex     Female
    select radio button     exp     6

    select checkbox     name:BlackTea
    select checkbox     name:tool

    select from list by label   continents     Antartica
    sleep   2
    select from list by index   continents     1
    sleep   2
    # select from list by value (doesn't work on this web, if option have value that will work)   

    # Box list

    select from list by label   selenium_commands   WebElement Commands
    sleep 2
    
*** Keywords ***
