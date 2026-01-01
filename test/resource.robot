*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272/Lab4/Registration.html
${BROWSER}        Chrome

*** Keywords ***
Open Browser To Registration Page
    Open Browser    http://${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0
    Registration Page Should Be Open
    Capture Page Screenshot    registration_page.jpg

Registration Page Should Be Open
    Title Should Be    Registration

Success Page Should Be Open
    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    Capture Page Screenshot    success_page.jpg

Input First Name
    [Arguments]    ${first_name}
    Input Text    firstname    ${first_name}

Input Last Name
    [Arguments]    ${last_name}
    Input Text    lastname    ${last_name}
Input Organization
    [Arguments]    ${organization}
    Input Text    organization   ${organization}

Input Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Input Phone Number
    [Arguments]    ${phone_number}
    Input Text    phone    ${phone_number}

Submit Registration
    Click Button    registerButton
