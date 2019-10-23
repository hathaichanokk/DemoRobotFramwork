*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    https://www.google.co.th
${BROWSER}    Chrome
${WELCOME URL}    www.cs.kku.ac.th
${DELAY}    0

*** Test Cases ***
Go To Homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
	Input Text    q    ${WELCOME URL}
	Submit Form   
	Wait Until Page Contains    CS KKU
    Close Browser