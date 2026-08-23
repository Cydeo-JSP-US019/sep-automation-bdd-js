@sep16
Feature: Click on the next button on payment plans page

    As a customer, I should be able to click on the next button on step 2 when I select a plan.

    #* AC1: Clicking on any plan should activate the next button
    #* AC2: When the customer clicks on the next button, the Step 3 page should be displayed.
    #* AC3: In the stepper, steps 1 and 2 should be green, and step 3 should be blue.
    #* AC4: The payment component should be displayed.
    #* AC5: A price summary should be displayed.
    #* AC6: The back button should be displayed and enabled.


    Background:
        Given user is on the enrollment page
        And user has completed start application step


    #Scenario: Clicking on upfront payment plan activates the next button
    #    Then the next button is disabled by default
    #    When user clicks upfront payment plan
    #    Then the next button is enabled

    #Scenario: Clicking on installments payment plan activates the next button
    #    Then the next button is disabled by default
    #    When user clicks installments payment plan
    #    Then the next button is enabled

    @sep16-1
    Scenario Outline: Clicking on any payment plan activates the next button
        Then the next button is disabled by default
        When user clicks "<payment_plan>" payment plan
        Then the next button is enabled

        Examples:
            | payment_plan |
            | upfront      |
            | installments |

