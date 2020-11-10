Feature: Credit Card Form
  User fills up a form with credit card details to purchase an item

    Scenario: I enter the correct card details
      Given I am on the payment page
      When enter the correct card details
      And I click the submit button
      Then I should be redirected to the Thank You page
    
    Scenario: Scenario
      Given I am on the payment page
      When enter the incorrect card details
      And I click the submit button
      Then an error message is rendered on the page

# CONDITIONS
# Credit card number must be 16 digits
# Credit card field accepts only numbers
# Submitting a blank form renders the error "Field cannot be blank"
