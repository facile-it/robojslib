***Settings***
Library     facile_toolkit.py
Library     SeleniumLibrary

***Variables***
${url}      https://facile.it/assicurazioni-auto/preventivo.html 
***Test Cases***
tests element attribute should contain value - PASS
    [Documentation]
    ...     given locator "ASF_nascita_data" has "maxlength" attribute set to "14"
    ...     When I use "element attribute should contain value" set to "14"
    ...     Then the test is passed
    facile_toolkit.Open browser  ${url}   Chrome
    element attribute should contain value  ASF_nascita_data     maxlength      14

tests element attribute should contain value - FAIL
    [Documentation]
    ...     given locator "ASF_nascita_data" has "maxlength" attribute set to "14"
    ...     When I use "element attribute should contain value" set to "15"
    ...     Then the test is passed
    facile_toolkit.Open browser  ${url}   Chrome
    Run Keyword And Expect Error  *    element attribute should contain value  ASF_nascita_data     maxlength      15

tests element attribute should not contain value - PASS
    [Documentation]
    ...     given locator "ASF_nascita_data" has "maxlength" attribute set to "14"
    ...     When I use "element attribute should not contain value" set to 15
    ...     Then the test is passed
    facile_toolkit.Open browser  ${url}   Chrome
    element attribute should not contain value  ASF_nascita_data     maxlength      15

tests element attribute should not contain value - FAIL
    [Documentation]
    ...     given locator "ASF_nascita_data" has "maxlength" attribute set to "14"
    ...     When I use "element attribute should not contain value" set to 14
    ...     Then the test is failed
    facile_toolkit.Open browser  ${url}   Chrome
    Run Keyword And Expect Error  *   element attribute should not contain value  ASF_nascita_data     maxlength      14

tests clear session Keyword
    [Documentation]
    ...     Given I input data on the page
    ...     When I use clear session
    ...     then session should be cleared hence previously inserted data should not be displayed
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_comune_nascita  test
    ${valueBeforeClear}=  Get Value  ASF_comune_nascita
    clear session
    ${valueAfterClear}=  Get Value  ASF_comune_nascita
    Should Not Be Equal  ${valueBeforeClear}  ${valueAfterClear}  msg=None  values=True  ignore_case=False

tests Scroll keyword
    [Documentation]
    ...     Given I see ASF_sesso_M
    ...     When I use scroll 500
    ...     then I should not see ASF_sesso_M
    facile_toolkit.Open browser  ${url}   Chrome
    scroll  500
    Element Should Not Be Visible  ASF_sesso_M  message=None

tests mobile
    facile_toolkit.Open mobile browser   ${url}  iPhone X

tests field_returns keyword INVALID - PASS
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  1
    Press Keys  ASF_nascita_data  TAB
    field returns  invalid

tests field_returns keyword INVALID - FAIL
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  01111992
    Press Keys  ASF_nascita_data  TAB
    Run Keyword And Expect Error  *   field returns  invalid

tests field_returns keyword VALID - PASS
    [Tags]  test
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  01111992
    Press Keys  ASF_nascita_data  TAB
    field returns  valid

tests field_returns keyword VALID - FAIL
    [Tags]  test
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  01
    Press Keys  ASF_nascita_data  TAB
    Run Keyword And Expect Error  *   field returns  valid


***Keywords***
ignore
    [Arguments]  ${Keyword}    @{args}
    Run Keyword And Continue On Failure  ${Keyword}   @{args}