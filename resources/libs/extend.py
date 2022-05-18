from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction

@keyword(name='Drag Drop')
def drag_drop (element_id, p_origin, p_target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    el_origin = driver.find_elements_by_id(element_id)[int(p_origin)]
    el_target = driver.find_elements_by_id(element_id)[int(p_target)]


    actions = TouchAction(driver)
    actions.long_press(el_origin).move_to(el_target)
    actions.release()
    actions.perform()

