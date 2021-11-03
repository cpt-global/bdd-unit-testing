Feature: addition
 Scenario Outline: as a user I want to be able to add two numbers together
    Given : Both numbers are positive
    When the result should be positive too "<x>"
    Examples: Numbers
      |x    | y     | result  | comment       |
      |75   | 25    | 100     | positive test |
      |85   | -250  | 95      | negative test |

    