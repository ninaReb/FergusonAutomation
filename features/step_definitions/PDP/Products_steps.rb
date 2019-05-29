

Given("I am on the Ferguson desktop site") do
  visit "https://ferguson.com"
  @login_page.Logon('test_123@mailinator.com', 'Admin123')
end

When("I type ccc on the search field") do  
  @header_page.FindSearch("CCC")
end
  
When("I click on Enter button") do
  @header_page.ClickFind_Button
end
  
Then("I should see the results I searched") do
  expect(page).to have_text('3/8 in. Copper Coupling 1/2 in OD')
  expect(page).to have_text('CCC') 
  expect(page).to have_text('SHIPPING INFORMATION')
  expect(page).to have_selector('#js_inventory_state', visible: true) 
  expect(page).to have_selector('#js-down-pdf', visible: true)

  @login_page.Logout
end


# Verify mouse hover on a product image
Given("I am on the product details page of a product") do
  @header_page.FindSearch('M6190BL')
  @header_page.ClickFind_Button
end

When("I hover over on the product image") do
  @pdp_page.ImageHover
  puts 'mouse was hovered'
end

Then("I should see the product part zoom in a new window") do
  expect(page).to have_selector('.zoomLens')
  expect(page).to have_selector ('.zoomWindow')
end

