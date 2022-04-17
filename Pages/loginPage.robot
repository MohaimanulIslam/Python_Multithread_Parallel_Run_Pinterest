*** Settings ***
Library     SeleniumLibrary
Variables   ../Locators/locators.py

*** Variables ***
${Browser}      chrome
${SiteUrl}      https://www.pinterest.com/
${user}         miraz.qups@gmail.com
${password}     TestCase0101


*** Keywords ***
open my browser
    open browser    ${SiteUrl}   ${Browser}
    maximize browser window

Click SignIn
    builtin.sleep   2
    click element  ${LOGIN_BTN}
    builtin.sleep   2
    input text  ${SET_EMAIL}    ${user}
    input text  ${SET_PASS}     ${password}
    click element  ${CLICK_SIGNIN_BTN}
    close browser

