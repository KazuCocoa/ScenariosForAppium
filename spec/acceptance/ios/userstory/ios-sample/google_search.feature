Feature: acceptance test
#  Scenario: display the result of google search
#    Given test with 'iphone'
#    Then go to 'https://google.com'
#    Then input 'ゆき' in search field
#    Then submit form
#    Then display search page ?
#    Then save screenshot '1'

#  Scenario: display the result of google search2
#    Given test with 'iphone'
#    Then go to 'https://google.com'
#    Then input '本' in search field
#    Then submit form
#    Then display search page ?
#    Then save screenshot '2'

#  Scenario:
#    Given test with 'iphone'
#    When I do action as the following steps:
#      |Target|Action|
#      |https://google.com|go_site|
#      |ゆき|input_field|
#      ||submit|
#    Then display search page ?
#    Then save screenshot '1'

  Scenario Outline: search search words with google
    Given test with <device>
    When go to <url>
    When input <word> in search field
    Then submit form
    Then display search page ?
    Then save screenshot <number>

    Examples:
      | device |     url           | word |  number  |
      | 'iphone' | 'https://google.com' | 'ゆき' | 1 |
      | 'iphone' | 'https://google.com' |  '本'  | 2 |
