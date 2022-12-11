Feature: UI Test with File Upload

Background:
  * configure driver = { type: 'chrome', showDriverLog: true }
@basicUITestFileUpload
Scenario: File Upload
    * configure driver = { type: 'chrome' }
    Given driver 'https://tus.io/demo.html'
    And  driver.maximize()
    And  driver.inputFile('#js-file-input', '../test.pdf')
    And submit().click('#file-submit')
    Then waitForText('#js-upload-container > div', 'The upload is complete!')
    Then screenshot()
    