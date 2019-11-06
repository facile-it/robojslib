*** Settings ***
Documentation			Facile.it
Library					SeleniumLibrary
Library 				./../robojslib/robojslib.py
Resource				generic_keywords.robot
Resource				variables.robot
Resource				cane_e_gatto_keywords.robot

*** Test Cases ***
1. Accessing the Home Page
	[Documentation]		Checks the Home Page is accessible.
	Given I open mobile browser 	Nexus5
	When I enter Facile URL
	Then I land on Facile Mobile Home Page
2. Accessing Assicurazione Cane e Gatto Landing Page
	[Documentation]		Checks the user can access Assicurazione Cane e Gatto Landing Page via the sidebar menu.
	Given I land on Facile Mobile Home Page
	When I click on the hamburger menu
	Then I see sidebar menu
	When I select Assicurazioni from sidebar menu
	And I select Assicurazione Cane e Gatto from Assicurazioni sub-menu
	Then I land on Assicurazione Cane e Gatto Mobile Landing Page
3. Accessing Cane e Gatto Results page
	[Documentation]		Checks the user lands on correct results page when clicking the button in Assicurazione Cane e Gatto Landing Page.
	Given I land on Assicurazione Cane e Gatto Mobile Landing Page
	When I click Confronta OFFERTE button
	Then I land on Assicurazione Cane e Gatto Results Page
4. Checking correct functioning of VAI button
	[Documentation]		Checks the user correctly lands in the partner website page when clicking the button "VAI" of a result in the Results Page.
	[Teardown]			Close Browser
	Given I land on Assicurazione Cane e Gatto Results Page
	When I click first result
	Then I land on the selected partner webpage