from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary import SeleniumLibrary
from json import dumps
import sys
import random
from selenium.webdriver.support.ui import WebDriverWait 
from selenium.webdriver.support import expected_conditions as EC 
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from SeleniumLibrary.base import LibraryComponent



class FatalError(RuntimeError):
    ROBOT_EXIT_ON_FAILURE = True
class Error(RuntimeError):
    ROBOT_CONTINUE_ON_FAILURE = True

class robojslib():
    ROBOT_LIBRARY_SCOPE = "GLOBAL"
    ROBOT_LIBRARY_DOC_FORMAT = "ROBOT"
    

    @keyword('Vanilla click')
    def check(self, elementId):
        """Clicks an element using Id selector method
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        driver.execute_script("document.getElementById('"+elementId+"').click()")
        if elementId is None:
            raise(FatalError(elementId, "not clickable"))
        else:
            print("selected", elementId)

    @keyword('Vanilla click by query selector')
    def vcbyqs(self, querySelector):
        """Clicks an element using querySelector method
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        driver.execute_script("document.querySelector('"+querySelector+"').click()")
        if querySelector is None:
            raise(FatalError(querySelector, "not clickable"))
        else:
            print("selected", querySelector)

    @keyword('Check title')
    def func(self):
        """Checks wether the title contains a valid string. If string contains a raw url it blocks execution.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        title = driver.title
        if  "http" not in title:
            print('title:', title )
        else:
            raise(FatalError("Error, title is ", title))

    @keyword('Modify url string')
    def modifyurl(self, url_to_be_substituted, url_substitute):
        """Substitute "url_to_be_substituted" with "url_substitute". The entire url or a string portion may be substituted. This keyword deletes cookies to avoid replacement issues.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        url = driver.current_url
        if url_to_be_substituted in url:
            driver.delete_all_cookies()
            newUrl = url.replace(url_to_be_substituted, url_substitute)
            driver.get(newUrl)
            print("stringa ", url_to_be_substituted, " substituted")
        else:
            raise(Error(url_to_be_substituted, " not substituted. Verify."))

    @keyword('Vanilla input')
    def gen(self, elementId, value):
        """Locates an element through Id selector and inputs a value. This keyword runs .dispatchEvent('change') to trigger js events.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        driver.execute_script("document.getElementById('"+elementId+"').value = '"+value+"'")
        driver.execute_script("document.getElementById('"+elementId+"').dispatchEvent(new Event('change'))")

    @keyword('Vanilla input by query selector')
    def genqs(self, querySelector, value):
        """Locates an element through queryselector and inputs a value. This keyword runs .dispatchEvent('change') to trigger js events.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        driver.execute_script("document.querySelector('"+querySelector+"').value = '"+value+"'")
        driver.execute_script("document.querySelector('"+querySelector+"').dispatchEvent(new Event('change'))")

    @keyword('Insert phone nr')
    def Nr(self, elementId):
        """Generates an italian formatted random phone number and inputs it in the given locator.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        nr = random.randint(0, 10000000)
        tel = "351" + str(nr)
        print(tel, "generated")
        if elementId is not None:
            driver.execute_script("document.getElementById('"+elementId+"').value = '"+tel+"'")
            print('phone nr. generated ', tel, 'inputed in ', elementId)
        else:
            raise(FatalError("id not valid"))
    
    @keyword('Checkbox control')
    def cc(self, elementId):
        """Controls whether the given checkbox is selected, if it's not it will be clicked.
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        check = driver.find_element_by_id(elementId).is_selected()
        if check is True:
            raise(Error('checkbox already selected'))
        else:
            driver.execute_script("document.getElementById('"+elementId+"').click()")
            driver.execute_script("document.getElementById('"+elementId+"').dispatchEvent(new Event('change'))")
            print("checkbox selected ", elementId)
    
    @keyword('Set responsive')
    def tr(self, deviceName):
        """Sets window size in the given resolution. 
            Resolutions:
            Nexus5 = 360, 640
            iPhone8 = 375, 667
            GalaxyS8 = 360, 740
            iPad = 768, 1024
        """
        from selenium import webdriver
        if deviceName == "Nexus5":
            mobile_emulation = { "deviceName": "Nexus 5" }
            chrome_options = webdriver.ChromeOptions()
            chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)
            driver = BuiltIn().get_library_instance('SeleniumLibrary').create_webdriver('Chrome', chrome_options=chrome_options)
            #driver = BuiltIn().get_library_instance('SeleniumLibrary').create_webdriver('Chrome', chrome_options=chrome_options)
        elif deviceName == "iPhone8":
            mobile_emulation = { "deviceName": "iPhone 6/7/8" }
            chrome_options = webdriver.ChromeOptions()
            chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)
            driver = BuiltIn().get_library_instance('SeleniumLibrary').create_webdriver('Chrome', chrome_options=chrome_options)
        elif deviceName == "iPad":
            mobile_emulation = { "deviceName": "iPad" }
            chrome_options = webdriver.ChromeOptions()
            chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)
            driver = BuiltIn().get_library_instance('SeleniumLibrary').create_webdriver('Chrome', chrome_options=chrome_options)
        elif deviceName == "GalaxyS8":
            from selenium.webdriver.chrome.options import Options
            mobile_emulation = {
                "deviceMetrics": { "width": 360, "height": 740, "pixelRatio": 4.0 }
                }
            chrome_options = webdriver.ChromeOptions()
            chrome_options.add_experimental_option("mobileEmulation", mobile_emulation)
            driver = BuiltIn().get_library_instance('SeleniumLibrary').create_webdriver('Chrome', chrome_options=chrome_options)
        elif deviceName is None:
            raise(Error("missing argument"))   

    @keyword('Wait until title contains')
    def slUUc(self, value):
        """Waits until title contains the given string
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        url = driver.current_url
        wait = WebDriverWait(driver, 20)
        action = wait.until(EC.title_contains(value))
        if action:
            print(value, "is contained in title")
        else:
           raise(FatalError(value, " is not contained in title"))
    
    @keyword('Open new tab')
    def ont(self, url):
        """Opens a new browser tab to the given url
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        driver.execute_script("window.open('"+url+"', '_blank');")

    @keyword('Check if visible and click')
    def cvc(self, elementId):
        """checks if the given element Id is visible then clicks it
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        elem = driver.find_element_by_id(elementId)
        if elem.is_displayed():
            elem.click()
        else:
            raise(Error("element not visible", elementId))
    
    @keyword('Check if visible and click by class')
    def cvcbc(self, elementClass):
        """checks if the given element class is visible then clicks it
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        elem = driver.find_elements_by_class_name(elementClass)
        if elem.is_displayed():
            elem.click()
        else:
            raise(Error("element not visible", elementClass))

    @keyword('Check if visible and click by query selector')
    def cvcbq(self, querySelector):
        """checks if the given element query selector is visible then clicks it
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        elem = driver.find_element_by_css_selector(querySelector)
        if elem.is_displayed():
            elem.click()
        else:
            raise(Error("element not visible ", querySelector))

    @keyword('Element value should not be empty')
    def evs(self, elementId):
        """checks that elementId value is not empty set and contains any value
        """
        driver = BuiltIn().get_library_instance('SeleniumLibrary').driver
        elem = driver.find_element_by_id(elementId)
        val = elem.get_attribute("value")
        if val != '':
            pass
        else:
            raise(FatalError(sys.__stdout__.write('Value is empty %s\n' % val)))