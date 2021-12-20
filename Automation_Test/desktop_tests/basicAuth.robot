*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/main.txt
Test Setup      BasicAuth Selenium Test Setup
Test Teardown   Basic Selenium Test Teardown


*** Test Cases ***
add_remove_elements
    [Documentation]  - Login with not valid credentials (user: admin1, password: admin1)
    ...    - Validate that the authentication was unsuccessful.
    ...    - Login with valid credentials (user: admin, password: admin)
    ...    - Validate that the authentication was successful.
    Input Username And Password On Alert On Login Page
    Verify Login Successfully On Page
    Input Wrong Username And Password On Alert On Login Page
    Verify Login Unsuccessfully On Page