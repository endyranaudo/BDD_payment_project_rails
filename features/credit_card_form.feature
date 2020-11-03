Feature: Credit Card Form
  User types credit card details

    Scenario: Scenario
      Given the details prompted are correct
      When I click the submit button
      Then I am redirected to the Thank You page
    
    # Scenario: Scenario
    #   Given the details prompted are incorrect
    #   When I click the submit button
    #   Then an error message is rendered on the page

# CONDITIONS
# Credit card number must be 16 digits
# Credit card field accepts only numbers
# Submitting a blank form renders the error "Field cannot be blank"
