*** Settings ***
Library					SeleniumLibrary
Library 				./../robojslib/robojslib.py
Resource				generic_keywords.robot

*** Test Cases ***
1. Google Search
	[Teardown]			Close All Browsers
	Given I open mobile browser 	Nexus5
	When I enter Google URL
	Then I land on Google Mobile Home Page
	When I click search text field
	And I input keyword
	And I select first result
	Then Search results is displayed