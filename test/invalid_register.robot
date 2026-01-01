*** Settings ***
Library           SeleniumLibrary
Resource          resource.robot
Test Setup       Open Browser To Registration Page
Test Teardown    Close All Browsers

*** Test Cases ***
Invalid Registration Empty First Name
    Input Last Name     Sodsai
    Input Organization  CS KKU
    Input Email         somyod@kkumail.com
    Input Phone Number  091-001-1234
    Submit Registration
    Registration Page Should Be Open
    Page Should Contain    Please enter your first name!!
    Capture Page Screenshot    invalid_registration_empty_first_name.jpg

Invalid Registration Empty Last Name
    Input First Name    Somyod
    Input Organization  CS KKU
    Input Email         somyod@kkumail.com
    Input Phone Number  091-001-1234
    Submit Registration
    Registration Page Should Be Open
    Page Should Contain    Please enter your last name!!
    Capture Page Screenshot    invalid_registration_empty_last_name.jpg

Invalid Registration Empty First and Last Name
    Input Organization  CS KKU
    Input Email         somyod@kkumail.com
    Input Phone Number  091-001-1234
    Submit Registration
    Registration Page Should Be Open
    Page Should Contain    Please enter your name!!
    Capture Page Screenshot    invalid_registration_empty_first_and_last_name.jpg

Invalid Registration Empty Email
    Input First Name    Somyod
    Input Last Name     Sodsai
    Input Organization  CS KKU
    Input Phone Number  091-001-1234
    Submit Registration
    Registration Page Should Be Open
    Page Should Contain    Please enter your email!!
    Capture Page Screenshot    invalid_registration_empty_email.jpg

Invalid Registration Empty Phone Number
    Input First Name    Somyod
    Input Last Name     Sodsai
    Input Organization  CS KKU
    Input Email         somyod@kkumail.com
    Submit Registration
    Registration Page Should Be Open
    Page Should Contain    Please enter your phone number!!
    Capture Page Screenshot    invalid_registration_empty_phone_number.jpg

Invalid Registration Phone Number Format
    Input First Name    Somyod
    Input Last Name     Sodsai
    Input Organization  CS KKU
    Input Email         somyod@kkumail.com
    Input Phone Number  1234
    Submit Registration
    Registration Page Should Be Open
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
    Capture Page Screenshot    invalid_registration_phone_number_format.jpg