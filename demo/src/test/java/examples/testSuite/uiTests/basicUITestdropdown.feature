Feature: UI Test with DropDown

Background:
  * configure driver = { type: 'chrome', showDriverLog: true }
@basicUITestdropdown
Scenario: Drop Down
  Given driver 'https://semantic-ui.com/modules/dropdown.html'
  And def locator = "select[name=skills]"
  Then scroll(locator)
  And click(locator)
  And click('div[data-value=css]')
  And click('div[data-value=html]')
  And click('div[data-value=ember]')
  And delay(1000)

Scenario: Iframe Test
  Given driver 'https://nunzioweb.com/iframes-example.htm'
  When switchFrame('#frame')
  

  
