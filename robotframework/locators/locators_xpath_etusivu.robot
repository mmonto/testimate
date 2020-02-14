*** Settings ***

*** Variables ***
${title}        Korkealuokkaista ohjelmistotestauspalvelua | Testimate
${PALVELUT_BUTTON}      xpath://span[contains(text(),'Palvelut')]
${TESTAUS_JA_LAADUNVARMISTUS_BUTTON}        xpath://span[contains(text(),'Testaus ja laadunvarmistus')]
${TESTIAUTOMAATIO_BUTTON}       xpath://li[@id='menu-item-336']//span[contains(text(),'Testiautomaatio')]
${MOBIILITESTAUS_BUTTON}       xpath://span[contains(text(),'Mobiilitestaus')]
${TEKSTI_1_MOBIILISOVELLUS}    Toimiiko sovelluksesi tai verkkopalvelusi viimeisimmässä iOS-versiossa tai parin vuoden takaisessa Androidissa? Mobiilitestauksella varmistetaan teknisesti moitteeton ja ensiluokkainen käyttäjäkokemus jatkuvasti suosiotaan kasvattavassa digitaalisten palveluiden käyttöympäristössä.
