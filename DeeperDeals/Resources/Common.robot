*** Settings ***
Library  Selenium2Library
Library  String
Resource  Variables.robot

*** Variables ***


*** Keywords ***
Begin Test
    set selenium timeout  20s
    open browser  ${DEEPERDEALS}  ff
    wait until page contains  Log In
    maximize browser window
    sleep  5s

End Test
    close browser



