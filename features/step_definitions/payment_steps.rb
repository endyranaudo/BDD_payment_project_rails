#SCENARIO ONE
Given('I am on the payment page') do
  visit "/payments"
end

When('enter the correct card details') do
  fill_in "card-details",	with: "1234123412341234" 
end

When('I click the submit button') do
  click_on 'pay-now'
end

Then('I should be redirected to the Thank You page') do
  expect(page).to have_content("Thank you!")
end

# SCENARIO TWO
When('enter the incorrect card details') do
  fill_in "card-details",	with: "121222121" 
end

Then('an error message is rendered on the page') do
  expect(page).to have_content("Incorrect card details.")
end