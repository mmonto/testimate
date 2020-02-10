*** Settings ***

*** Keywords ***
Validate page
    [Documentation]    This keyword ...
    [Timeout]    3 minutes
    #Wait Until Page Contains Element   ${PALVELUT_BUTTON}
    #Click Link   Palvelut
    Wait until page contains    Luottokumppani vaativiin testausprojekteihin   5   error=Tekstiä ei löytynyt
    #Go back

Test Link validity
    @{AllElements}    GetWebElements    tag:a
    : FOR    ${ELEMENT}    IN    @{AllElements}
    \    ${link}    Get Element Attribute    ${ELEMENT}    attribute=href
    \    @{AllLinks}=       Create List     ${link}
    \    Run Keyword Unless    '${link}'=='None'    Append To List      ${AllLinks}    ${link}
    ${AllLinksI}    Remove Duplicates    ${AllLinks}
    Log List    ${AllLinksI}
    :FOR    ${LINK}    IN    @{AllLinksI}
    \    ${RESP}    Get Text   ${LINK}
    \    log    ${RESP}