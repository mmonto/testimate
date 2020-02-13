*** Settings ***

*** Variables ***
${title}    Korkealuokkaista ohjelmistotestauspalvelua | Testimate

*** Keywords ***
Validate page
    [Documentation]    This keyword ...
    [Timeout]    3 minutes
    Capture Page Screenshot    EMBED
    Title Should be     ${title}
    Wait until page contains    Luottokumppani vaativiin testausprojekteihin   5   error=Tekstiä ei löytynyt

