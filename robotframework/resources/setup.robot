*** Settings ***

*** Keywords ***
Suite Setup
    Set Selenium Speed      0.5

Suite Teardown
    Close All Browsers

Test Case Setup
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size     1024    768
    Maximize Browser Window
    Title Should be     ${title}


Test Case Teardown
    Close Browser