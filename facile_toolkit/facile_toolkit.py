import sys
import random
from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary import SeleniumLibrary
from SeleniumLibrary.keywords import BrowserManagementKeywords as BM
from SeleniumLibrary import ElementKeywords
from json import dumps
from selenium.webdriver.support.ui import WebDriverWait 
from selenium.webdriver.support import expected_conditions as EC 
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from SeleniumLibrary.base import LibraryComponent
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from robot.api import logger
from robot.errors import RobotError


class facile_toolkit(object):
    ROBOT_LIBRARY_SCOPE = "GLOBAL"
    ROBOT_LIBRARY_DOC_FORMAT = "ROBOT"
    
    @keyword
    def wait(self, keyword, **kwargs): 
        """Automatically retries the given keywords/arguments 10 times, each 3 seconds
        """
        BuiltIn().wait_until_keyword_succeeds("10 x", "3 s", keyword, kwargs)

    @keyword
    def field_returns(self, validity):
        """ Returns DOM error status based on Facile "err wrong" class.
        
            "Validity" set to "invalid" expects the error to pop hence passes the test.
            "Validity" set to "Valid" expects the error to not pop
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        source = driver.page_source
        validity = validity.lower()
        if validity == "invalid" and "err wrong" in source:
            logger.info(source)
        elif validity == "invalid" and "err wrong" not in source:
            raise(RobotError("err wrong is in source"))
        elif validity == "valid" and "err wrong" not in source:
            logger.info(source)
        elif validity == "valid" and "err wrong" in source:
            raise(RobotError("source contains 'err wrong' sub-string"))
            
    
    @keyword
    def open_browser(self, url, browser):
        """ Opens the given browser and goes on url.

            browser may be Firefox or Chrome. Firefox may be passed as "ff" aswell.
        """
        browser = browser.lower()
        session = BuiltIn().get_library_instance('SeleniumLibrary')
        if browser == "chrome":
            chrome_options = webdriver.ChromeOptions()
            chrome_options.add_argument("--no-sandbox")
            chrome_options.add_argument("--disable-gpu")
            chrome_options.add_argument("--disable-extensions")
            enable_automation = ["enable-automation"]
            chrome_options.add_experimental_option("excludeSwitches", enable_automation)
            session.open_browser(url, browser, options=chrome_options)
        elif browser == "firefox" or "ff":
            firefox_options = webdriver.FirefoxOptions()
            firefox_options.add_argument("--no-sandbox")
            firefox_options.add_argument("--disable-gpu")
            firefox_options.add_argument("--disable-extensions")
            session.open_browser(url, browser, options=firefox_options)
        else:
            raise(RobotError("unexpected"))
    
    @keyword
    def open_mobile_browser(self, url, device):
        """ Opens a mobile-emulated chrome session based on the given device and 
            goes to the given url.
        """
        session = BuiltIn().get_library_instance('SeleniumLibrary')
        chrome_options = webdriver.ChromeOptions()
        mobile_emulation = {"deviceName": device}
        chrome_options.add_argument("--no-sandbox")
        chrome_options.add_argument("--disable-gpu")
        chrome_options.add_argument("--disable-extensions")
        chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)
        enable_automation = ["enable-automation"]
        chrome_options.add_experimental_option("excludeSwitches", enable_automation)
        session.open_browser(url, "Chrome", options=chrome_options)

    @keyword
    def element_attribute_should_contain_value(self, element, attribute, value):
        """ Returns PASS status if the given element's attribute contains the inputed value.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary')
        attr = driver.get_element_attribute(element, attribute )
        try:
            BuiltIn().should_contain(attr, value)
        except Exception as e:
            raise RobotError(e)

    @keyword
    def element_attribute_should_not_contain_value(self, element, attribute, value):
        """ Returns PASS status if the given element's attribute does not contain the inputed value.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary')
        attr = driver.get_element_attribute(element, attribute )
        try:
            BuiltIn().should_not_contain(attr, value)
        except Exception as e:
            raise RobotError(e)
        
    @keyword
    def clear_session(self):
        driver = BuiltIn().get_library_instance('SeleniumLibrary')
        driver.delete_all_cookies()
        driver.reload_page()

    @keyword
    def scroll(self, range):
        driver = BuiltIn().get_library_instance('SeleniumLibrary')
        driver.execute_javascript("document.documentElement.scrollTop = "+range+";")