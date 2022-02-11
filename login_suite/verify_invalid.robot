*** Setting ***
Documentation    This suit file handles all the test case related to the
...      invalid credentials

Library    SeleniumLibrary
Resource    ../base/common_functionalites.resource


Test Setup   Launch Browser
Test Teardown  End Browser


Test Template      Verify InValid Credentials Template

*** Test Cases ***
TC1    john   john123   Dutch
Tc2      peter  peter123   Danish
TC3       Mark     Mark123    Greek


*** Keywords ***
Verify InValid Credentials Template
  Input Text    id=authUser    john
  Input Text    id=clearPass    john123
  Select From List By Label    name=languageChoice      Dutch
  Click Element    xpath=//button[@type='submit']
  Element Should Contain    //div[contains(text(),'Invalid')]    Invalid
