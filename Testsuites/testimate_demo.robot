*** Settings ***
Documentation     Testimate demo testsuite.
...
...               Pre-requirements: ..
Suite Setup
Test Timeout      15 minutes
Library           OperatingSystem
Library           Process
#Library           SeleniumLibrary
Variables         variables.py
Resource          resource_keywords.robot

*** Variables ***

*** Test Cases ***
Connect to Testimate
    [Documentation]    Connect to Testimate website.
    [Tags]    TC001
    [Timeout]    3 minutes
    #Open Browser    ${URL}    ${BROWSER}
    Validate page
    #Close Browser


