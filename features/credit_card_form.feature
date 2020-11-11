# CONDITIONS
# Credit card number must be 16 digits
# Credit card field accepts only numbers
# Submitting a blank form renders the error "Field cannot be blank"

Feature: Credit Card Form
  User fills up a form with credit card details to purchase an item

    Scenario: Correct card details
      Given I am on the payment page
      When I enter the correct card details
      And I click the submit button
      Then I should be redirected to the Thank You page
    
    Scenario: I enter less or more than 16 digits in the card number field
      Given I am on the payment page
      When I enter less or more than 16 digits in the card number field
      And I click the submit button
      Then CARD NUMBER MUST BE 16 DIGITS error message is rendered on the page
    
    Scenario: Card number fields accepts only numbers
      Given I am on the payment page
      When I enter a letter in the credit Card Number field
      And I click the submit button
      Then ONLY NUMBERS ACCEPTED error message is rendered on the page
    
    Scenario: Card number field is blank
      Given I am on the payment page
      When I leave blank the Card Number field
      And I click the submit button
      Then FIELD CANNOT BE BLANK error message is rendered on the page

