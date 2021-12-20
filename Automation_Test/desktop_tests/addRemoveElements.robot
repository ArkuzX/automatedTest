*** Settings ***
Library         SeleniumLibrary
Resource        ../resources/main.txt
Test Setup      Basic Selenium Test Setup
Test Teardown   Basic Selenium Test Teardown

*** Test Cases ***
add_remove_elements
    [Documentation]  - Add 20 Elements
    ...    - Validate that the element was added
    ...    - Remove element by element
    ...    - Validate each element was deleted
    repeat keyword      20 times    Create New Element And Verify New Element On Page
    repeat keyword      20 times    Click Delete Element On Page
    Verify Delete Element Button Is Not On Page
