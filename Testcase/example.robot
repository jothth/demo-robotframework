*** Settings ***
Documentation           This is not a simple test with Robot Framework
Library                 Selenium2Library


*** Variables ***
${URL}               http://google.com
${BROWSER}              Chrome
${DELAY}                0


*** Keywords ***
Open Browser To Login Page
    Open Browser        ${URL}   ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}


*** Test Cases ***
Valid Login
    Open Browser To Login Page
    [Teardown]    Close Browser