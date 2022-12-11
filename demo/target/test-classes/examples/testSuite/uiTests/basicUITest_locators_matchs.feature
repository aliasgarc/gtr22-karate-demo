Feature: Basic UI Tests OrangeHR

Background:
  * configure driver = { type: 'chrome', showDriverLog: false }
@basicUITestOrangeHR
Scenario:  UI tests for OrangeHR  site

  Given driver 'https://opensource-demo.orangehrmlive.com'
  Then waitForUrl('https://opensource-demo.orangehrmlive.com/web/index.php/auth/login')
  And driver.maximize()
  And input('#app > div.orangehrm-login-layout > div > div.orangehrm-login-container > div > div.orangehrm-login-slot > div.orangehrm-login-form > form > div:nth-child(2) > div > div:nth-child(2) > input', 'Admin')
  And input('#app > div.orangehrm-login-layout > div > div.orangehrm-login-container > div > div.orangehrm-login-slot > div.orangehrm-login-form > form > div:nth-child(3) > div > div:nth-child(2) > input', 'admin123')
  When click('#app > div.orangehrm-login-layout > div > div.orangehrm-login-container > div > div.orangehrm-login-slot > div.orangehrm-login-form > form > div.oxd-form-actions.orangehrm-login-action > button')
  Then waitForUrl('https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index')
  And click('{span} - Admin')