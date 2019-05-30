
Given('I am on logged in on ferguson desktop site') do
  @login_page.Logon(@env.email , @env.password)
  sleep 2
end

When('I go to the PDP for the product A') do
  @header_page.FindSearch('A7430801')
  @header_page.ClickFind_Button
end

Then('I should see the Product Description section A') do
  expect(page).to have_content(@PdpPageNina.Description)
end

# Then('I should see the Product title') do
#   expect(page).to have_content "Moen Align™ 1.2 gpm Single Lever Handle High Arc Lavatory Faucet"
# end

Then('I should see the Product code A') do
  expect(page).to have_content(@PdpPageNina.Product_Code)
end

# Then('I should see the Product item number') do
#   expect(page).to have_content(@PdpPageNina.getProduct_Item)
# end

Then('I should see the Product specifications A') do
  expect(page).to have_content(@PdpPageNina.Specifications)
end

# Then('I should see the Product Shipping Information') do
#   expect(page).to have_content(@PdpPageNina.getShipping_Info)
#   expect(page).to have_content(@PdpPageNina.getShipping_Info_Content)
# end

# Then('I should see the Product Quantity') do
#   expect(page).to have_content(@PdpPageNina.getQuantity)
# end

# Then('I should see the Product ADA, Green and Lead Law Compliant icons') do
#   expect(page).to have_content(@PdpPageNina.getLeadLawIcon)
#   expect(page).to have_content(@PdpPageNina.getAdaIcon)
#   expect(page).to have_content(@PdpPageNina.getGreenIcon)
# end

Then('I should see the Product price A') do
  expect(page).to have_content(@PdpPageNina.Price)
end

Then('I should see the Add to Cart button enabled A') do
  expect(page).to have_content(@PdpPageNina.Add_To_Cart_Button)
end

Then('I should see the Add to My List button enalbed A') do
  expect(page).to have_content(@PdpPageNina.Add_To_Lists_Button)
end

Then('I should see the Print button enabled A') do
  expect(page).to have_content(@PdpPageNina.Print)
end

Then('I should see the breadcrumbs A') do
  expect(page).to have_content(@PdpPageNina.Breadcrumbs)
end

Then('I should see the product mark A') do
  expect(page).to have_content(@PdpPageNina.Brand_Logo)
end

# Then('I should see the In Store Availability information') do
#   expect(page).to have_content(@PdpPageNina.getIn_Store_Availability)
#   expect(page).to have_content(@PdpPageNina.getIn_Store_Availability_Content)
# end

Then('I should see the Frequently Purchased Together section A') do
  expect(page).to have_content(@PdpPageNina.Frequently_Purchased)
end

Then('I should see the Entire Collection section A') do
  expect(page).to have_content(@PdpPageNina.Entire_Collection)
end

# Then('I should see product price options') do
#   puts 'verificar'
#   expext(page).to have_content(@PdpPageNina.getProPricingOpt)
#   expect(page).to have_content(@PdpPageNina.getListPricingOpt)
#   expect(page).to have_content(@PdpPageNina.getNoPricingOpt)
# end

# When('I click on the first color option') do
#   @PdpPageNina.clickFirstColor
# end

# Then('I should see the selected color characteristcs') do
#   expect(page).to have_content 'Single Lever Handle High Arc Lavatory Faucet in Brushed Nickel'
#   expect(page).to have_content '(Pricing is for Brushed Nickel)'
#  # expect(page).to have_content(@PdpPageNina.getSpecification_ColorFinish) VERIFICAR
# end

# When('I click on the No Pricing option') do
#   puts 'verificar'
#   @PdpPageNina.selectNoPricingOpt
# end

# Then('I should see the content {string} on the price place') do |pcontent|
#   puts 'verificar'
#  # pcontent = 'Call us for price'
#   #expect(page).to have_content(pcontent)
# end

# When('I click on the Add to Cart button A') do
#   @PdpPageNina.clickAddToCartButton
# end

Then('I should see a briefly message with the Checkout Now link A') do |cCartMsg|
  @PdpPageNina.cartMsg 
  expect(page).to have_content(cartMsg)
  #expect(page).to have_content(@PdpPageNina.getCheckoutMessageLink)
end

# Then('I should see the cart icon be increased') do
#   expect(@PdpPageNina.getCartAmount).to eq(1)
# end

When('I click on the Add to My Lists button A') do
  @PdpPageNina.clickAddToMyListsButton
end

# Then('I should see the Add to My Lists modal be opened') do
#   expect(page).to have_content(@PdpPageNina.getAddMyListModal)
# end

# When('I click on Check Other Stores link') do
#   @PdpPageNina.clickCheck_Others_Info_Link
# end

# Then('I should see the Check Availability modal be opened') do
#   expect(page).to have_content(@PdpPageNina.getCheckAvailabilityModal)
# end

# When("I click on See Whats Available link") do
#   expect(page).to have_content(@PdpPageNina.clickSee_Whats_Available_Link)
# end

When("I hover over on the product image A") do
  @PdpPageNina.hoverMouse_Image
end

Then("I should see the product part zoom in a new window A") do
  expect(page).to have_content(@PdpPageNina.zoomed_Img)
end

