*** Settings ***
Library           SeleniumLibrary
Resource          resource.robot

*** Test Cases ***
Valid Registration Test
    Open Browser To Registration Page
    Input First Name    Somyod
    Input Last Name     Sodsai
    Input Organization  CS KKU
    Input Email         somyod@kkumail.com
    Input Phone Number  091-001-1234
    Submit Registration
    Success Page Should Be Open
    Capture Page Screenshot    valid_registration.jpg
    [Teardown]    Close Browser

valid Registration No Organization
    Open Browser To Registration Page
    Input First Name    Somyod
    Input Last Name     Sodsai
    Input Email         somyod@kkumail.com
    Input Phone Number  091-001-1234
    Submit Registration
    Success Page Should Be Open
    Capture Page Screenshot    valid_registration_no_organization.jpg
    [Teardown]    Close Browser