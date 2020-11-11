#SCENARIO ONE
Given('I am on the payment page') do
  visit "/payments"
end

When('I enter the correct card details') do
  fill_in "card-details",	with: "1234123412341234" 
end

When('I click the submit button') do
  click_on 'pay-now'
end

Then('I should be redirected to the Thank You page') do
  expect(page).to have_content("Thank you!")
end

# SCENARIO TWO
When('I enter less or more than 16 digits in the card number field') do
  fill_in "card-details",	with: "123412341234123" 
end

Then('CARD NUMBER MUST BE 16 DIGITS error message is rendered on the page') do
  expect(page).to have_content("Incorrect card details.")
end

# SCENARIO THREE
When('I enter a letter in the credit Card Number field') do
  fill_in "card-details",	with: "123412341234123X" 
end

Then('ONLY NUMBERS ACCEPTED error message is rendered on the page') do
  expect(page).to have_content("Only numbers accepted")
end

# SCANARIO FOUR
When('I leave blank the Card Number field') do
  fill_in "card-details",	with: "123412341234123X" 
end

Then('FIELD CANNOT BE BLANK error message is rendered on the page') do
  expect(page).to have_content("Only numbers accepted")
end