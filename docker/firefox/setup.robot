*** Settings ***

*** Keywords ***
Suite Setup
    Set Selenium Speed      0.5

Suite Teardown
    Close All Browsers

Test Case Setup
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Test Case Teardown
    Close Browser