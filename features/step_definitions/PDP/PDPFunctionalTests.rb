
When("I hover over the main Image") do
  @PdpNina.zoom_mouse_image
end

Then("I should see the zoomed image pop up") do
  @PdpNina.zoom_mouse_image
  expect(page).to have_content(@PdpNina.getZoomedImg)
end

When("I Click the blue arrow in the Specifications section") do
  @PdpNina.clickExpandSpecifications 
  sleep 2
end

Then("I should see the Combo Product's Specifications section expanded") do
  expect(page).to have_content(@PdpNina.getSpecs)
end

When("I click on Add To my Lists Button") do
  @PdpNina.clickAddToMyListsButton
  sleep 3
end

Then("I should see the Add To My Lists modal") do
  expect(page).to have_content(@PdpNina.getListModal)
end

When("I click on the View All link") do
  @PdpNina.clickEntireCollectionViewAll
  sleep 2
end

Then("I should see the collection page") do
  expect(page).to have_text("PROFLO®")
end

When("I click on the first Checkbox on the Frequently Purchased Together section") do
  @PdpNina.clickCheckBox
  sleep 1
end

When("I click the checkbox again") do
  @PdpNina.clickCheckBox
  sleep 1
end

Then("I should see the all checkboxes active") do
  expect(page).to have_content(@PdpNina.getActiveBox)
end

When("I click on the Add to Cart button in the Frequently Purchased Together section") do
  @PdpNina.clickFPTAddToCartButton
  @PdpNina.goToCart 
end

Then("I should see the cart page") do
  expect(page).to have_text("SHOPPING CART")

end

Then("I should see all the products from the FTP version added to cart") do
  expect(page).to have_text("PF1400TWH")
  expect(page).to have_text("3519954")
  expect(page).to have_text("PF5112HEWH")
  expect(page).to have_text("PFTSEC1000WH")
end

When("I click on the Right-side arrow in the Entire collection section") do
  @PdpNina.clickArrowRight
  sleep 1
end

Then("I should see the products shift") do
  expect(page).to have_content(@PdpNina.getEntireCollection)
end

When("I click on the Left-side arrow in the Entire collection section") do
  @PdpNina.clickArrowLeft
  sleep 1
end
  
When("I click on a color option for the product") do
  @PdpNina.clickSecondColor
  sleep 2
end

Then("I should see the product change to the color variant selected") do
  expect(page).to have_text("M6190BL")
  expect(page).to have_text("Matte Black")
end

                                                                                      
When("I click on the Add to Cart Button") do                                         
  @PdpNina.clickAddToCartButton
  sleep 1       
end                                                                                  
                                                                                    
Then("I should see a brief with the Checkout Now link") do 
  expect(page).to have_text("item(s) added to Cart Checkout Now")
  expect(page).to have_link("Checkout Now", :href => "https://www.ferguson.com/shoppingCart")
end                  

Then("I should see the product in the Cart Page") do 
  @PdpNina.goToCart 
  expect(page).to have_text("SHOPPING CART")  
  expect(page).to have_content(@PdpNina.getOrderSummary)
  expect(page).to have_text("PF1400TWH")     
end  

When("I Click the Check other stores link") do
  @PdpNina.clickCheckStores
  sleep 3
end

Then("I should see the store modal") do
  expect(page).to have_content(@PdpNina.getStoreModal)
end

When("I Click the See Whats Available link") do
  @PdpNina.clickCheckAvailability
  sleep 3
end

Then("I should see the availability modal") do
  expect(page).to have_content(@PdpNina.getStoreModal)
end

Then("I should see the Color Product's Specifications section expanded") do
  expect(page).to have_content(@PdpNina.getSpecs)
end

When("I click the print button") do
  @PdpNina.clickPrint
end

Then("I should see the print preview popup") do
  pending # Write code here that turns the phrase above into concrete actions
end


When("I click on a Size option for the product") do
  @PdpNina.clickBuyingOptionsLink
  sleep 2
end

Then("I should see the product change to the Size variant selected") do
  expect(page).to have_text("DMJLSLA10")
end

When("I Click the Check other stores link in the size option tab") do
  @PdpNina.clickBuyingOptionsLink
  @PdpNina.clickSizeAvailabilitylink
  sleep 2
end

When("I Click the See Whats Available link in the size option tab") do
  @PdpNina.clickBuyingOptionsLink
  @PdpNina.clickSizeShippingLink
  sleep 2
end

Then("I should see the Size Product's Specifications section expanded") do
  expect(page).to have_content(@PdpNina.getSizeOptionsExpanded) 
end

When("I click on Add To my Lists Button in the size option tab") do
  @PdpNina.clickBuyingOptionsLink
  @PdpNina.clickSizeListBtn
  sleep 2
end

When("I click on the Add to Cart Button in the size option tab") do
  @PdpNina.clickBuyingOptionsLink
  @PdpNina.clickSizeCartBtn
  sleep 2
end

Then("I should see the Color product in the Cart Page") do
  @PdpNina.goToCart 
  expect(page).to have_text("SHOPPING CART")  
  expect(page).to have_content(@PdpNina.getOrderSummary)
  expect(page).to have_text("P6190") 
end

Then("I should see the Size product in the Cart Page") do
  @PdpNina.goToCart 
  expect(page).to have_text("SHOPPING CART")  
  expect(page).to have_content(@PdpNina.getOrderSummary)
  expect(page).to have_text("DMJLSLA") 
end

When("I click on the second image") do
  @PdpNina.clickSecondImage
  sleep 3
  @PdpNina.zoom_mouse_image
end

Then("I should see the second image show up in the zoom container") do
  @PdpNina.zoom_mouse_image
  expect(page).to have_content(@PdpNina.getZoomedImg)
end



