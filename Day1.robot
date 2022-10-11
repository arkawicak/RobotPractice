*** Settings ***
Library            SeleniumLibrary
Suite Setup        Open Browser With Google Chrome
Suite Teardown     Close Google Chrome Browser

*** Variables ***
${DEMOBLAZE_URL}        https://www.demoblaze.com/index.html
${CHROME_BROWSER}       gc
*** Keywords ***
Open Browser With Google Chrome
    Open Browser    url=${DEMOBLAZE_URL}       browser=${CHROME_BROWSER} 

    Element Should Be Visible        xpath=//*[@id="nava"]

Verify Top Menu Button Appears
    Element Should Be Visible        xpath=//*[contains(text(), 'Home')]    

Click Login Button In Home Page
    Click Element                    xpath=//*[@id="login2"]

Input Username
    Wait Until Element Is Visible     xpath=//*[@id="loginusername"]   
    Input Text                        xpath=//*[@id="loginusername"]        text=test9618

Input Password  
    Input Text                          xpath=//*[@id="loginpassword"]        text=test             

Click Login Button
    Click Element                       xpath=//*[@type="button" and contains(text(), 'Log in')]
 Close Google Chrome Browser    
    Close Browser

*** Test case ***
User Should Be Able To Open Google Chrome Browser
    # Verify Demoblaze Logo Appears
    Verify Top Menu Button Appears

User Should Be Able To Login
    Click Login Button In Home Page
    Input Username
    Input Password
    
