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
    [Documentation]
    ...     Given I input an invalid value on a field
    ...     and I set "Field returns" invalid
    ...     and class "err wrong" appears in page source
    ...     then test should be passed
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  1
    Press Keys  ASF_nascita_data  TAB
    field returns  invalid

tests field_returns keyword INVALID - FAIL
    [Documentation]
    ...     Given I input a valid value on a field
    ...     and I set "Field returns" invalid
    ...     and class "err wrong" doesn't appear in page source
    ...     then test should be failed
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  01111992
    Press Keys  ASF_nascita_data  TAB
    Run Keyword And Expect Error  *   field returns  invalid

tests field_returns keyword VALID - PASS
    [Documentation]
    ...     Given I input a valid value on a field
    ...     and I set "Field returns" valid
    ...     and class "err wrong" doesn't appear in page source
    ...     then test should be passed
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  01111992
    Press Keys  ASF_nascita_data  TAB
    field returns  valid

tests field_returns keyword VALID - FAIL
    [Documentation]
    ...     Given I input an invalid value on a field
    ...     and I set "Field returns" valid
    ...     and class "err wrong" appears in page source
    ...     then test should be failed
    facile_toolkit.Open browser  ${url}   Chrome
    Input Text  ASF_nascita_data  01
    Press Keys  ASF_nascita_data  TAB
    Run Keyword And Expect Error  *   field returns  valid

tests DOM is loaded keyword
    [Documentation]
    ...     Given I land on ${url}
    ...     and dom is loaded before the timeout
    ...     then test is passed
    facile_toolkit.Open browser  ${url}   Chrome
    dom is loaded   5s

tests checkpoint - PASS
    [Documentation]
    ...     Given I land on ${url}
    ...     And I checkpoint on an existing page object
    ...     then test is passed
    facile_toolkit.Open browser  ${url}   Chrome
    checkpoint   ASF_nascita_data

tests checkpoint - FAIL
    [Documentation]
    ...     Given I land on ${url}
    ...     And I checkpoint on a Non-existing page object
    ...     then test is failed
    facile_toolkit.Open browser  ${url}   Chrome
    Run Keyword And Expect Error  *  checkpoint   ASF_not_existing_locator   5s


***Keywords***
ignore
    [Arguments]  ${Keyword}    @{args}
    Run Keyword And Continue On Failure  ${Keyword}   @{args}