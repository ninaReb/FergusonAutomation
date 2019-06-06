#require 'PDPNina'

Given("I am logged on Ferguson desktop site") do
    @login_page.logon('akratz@mcfadyen.com', 'Admin1976')
    sleep 2
end
  
When("I go to the Combo Product's Details page") do
  @header_page.find_search('PF1400TWH')
  @header_page.click_find_btn
end

Then("I should see the Combo Product's description section") do
  expect(page).to have_content(@PdpNina.getDescription)
end

Then("I should see the Combo Product's title") do
  expect(page).to have_content(@PdpNina.getName)
end

Then("I should see the Combo Product's code") do
  expect(page).to have_content(@PdpNina.getCode)
end

Then("I should see the Combo Product's item number") do
  expect(page).to have_content(@PdpNina.getProductIdNumber)
end

Then("I should see the Combo Product's specifications") do
  expect(page).to have_content(@PdpNina.getSpecs)
end

Then("I should see the Combo Product's Shipping Information") do
  expect(page).to have_content(@PdpNina.getShippingInfo)
end

Then("I should see the Combo Product's Quantity") do
  expect(page).to have_content(@PdpNina.getQty)
end

Then("I should see the Combo Product's Green icon") do
  expect(page).to have_content(@PdpNina.getGreen)
end

Then("I should see the Combo Product's price") do
  expect(page).to have_content(@PdpNina.getPrice)
end

Then("I should see the Combo Product's Add to Cart button enabled") do
  expect(page).to have_content(@PdpNina.getAddToCartBtn)
end

Then("I should see the Combo Product's Add to My List button enabled") do
  expect(page).to have_content(@PdpNina.getAddToListsBtn)
end

Then("I should see the Combo Product's Print button enabled") do
  expect(page).to have_content(@PdpNina.getPrintBtn)
end

Then("I should see the Combo Product's breadcrumbs") do
  expect(page).to have_content(@PdpNina.getBreadcrumbs)
end

Then("I should see the Combo Product's Brand Logo") do
  expect(page).to have_content(@PdpNina.getBrandLogo)
end

Then("I should see the Combo Product's Store Availability information") do
  expect(page).to have_content(@PdpNina.getAvailability)
end

Then("I should see the Combo Product's Frequently Purchased Together Section") do
  expect(page).to have_content(@PdpNina.getFrequentlyPurchased)
end

Then("I should see the Combo Product's Recommended section") do
  expect(page).to have_content(@PdpNina.getRecommendedAccessories)
end

Then("I should see the Combo Product's Entire Collection section") do
  expect(page).to have_content(@PdpNina.getEntireCollection)
end

Then("I should see Combo Product's Bundle Price") do
  expect(page).to have_content(@PdpNina.getBundlePrice)

end


Then("I should see the  Combo Product's title") do
  expect(page).to have_content(@PdpNina.getName)
end

Then("I should see the Combo Product's color finish section") do
  expect(page).to have_content(@PdpNina.getColorFinish)
end


#Color PDP
When("I go to the Color Product's Details page") do                                         
  @header_page.find_search('M6190')
  @header_page.click_find_btn
end                                                                                         
                                                                                            
Then("I should see the Color Product's description section") do                             
  expect(page).to have_content(@PdpNina.getDescription)             
end                                                                                         
                                                                                            
Then("I should see the Color Product's title") do                                           
  expect(page).to have_content(@PdpNina.getName)             
end                                                                                         
                                                                                            
Then("I should see the Color Product's code") do                                            
  expect(page).to have_content(@PdpNina.getCode)             
end                                                                                         
                                                                                            
Then("I should see the Color Product's item number") do                                     
  expect(page).to have_content(@PdpNina.getProductIdNumber)               
end                                                                                         
                                                                                            
Then("I should see the Color Product's specifications") do                                  
  expect(page).to have_content(@PdpNina.getSpecs)               
end                                                                                         
                                                                                            
Then("I should see the Color Product's Shipping Information") do                            
  expect(page).to have_content(@PdpNina.getShippingInfo)               
end                                                                                         
                                                                                            
Then("I should see the Color Product's color finish section") do                            
  expect(page).to have_content(@PdpNina.getColorFinish)                 
end                                                                                         
                                                                                            
Then("I should see the Color Product's Quantity") do                                        
  expect(page).to have_content(@PdpNina.getQty)               
end                                                                                         
                                                                                            
Then("I should see the Color Product's Green, ADA and Lead Law compliant icons") do         
  expect(page).to have_content(@PdpNina.getGreen)  
  expect(page).to have_content(@PdpNina.getAda)
  expect(page).to have_content(@PdpNina.getLeadLaw)             
end                                                                                         
                                                                                            
Then("I should see the Color Product's price") do                                           
  expect(page).to have_content(@PdpNina.getPrice)           
end                                                                                         
                                                                                            
Then("I should see the Color Product's Add to Cart button enabled") do                      
  expect(page).to have_content(@PdpNina.getAddToCartBtn)               
end                                                                                         
                                                                                            
Then("I should see the Color Product's Add to My List button enabled") do                   
  expect(page).to have_content(@PdpNina.getAddToListsBtn)              
end                                                                                         
                                                                                            
Then("I should see the Color Product's Print button enabled") do                            
  expect(page).to have_content(@PdpNina.getPrintBtn)               
end                                                                                         
                                                                                            
Then("I should see the Color Product's breadcrumbs") do                                     
  expect(page).to have_content(@PdpNina.getBreadcrumbs)             
end                                                                                         
                                                                                            
Then("I should see the Color Product's Brand Logo") do                                      
  expect(page).to have_content(@PdpNina.getBrandLogo)              
end                                                                                         
                                                                                            
Then("I should see the Color Product's Store Availability information") do                  
  expect(page).to have_content(@PdpNina.getAvailability)             
end                                                                                         
                                                                                            
Then("I should see the Color Product's Frequently Purchased Together Section") do           
  expect(page).to have_content(@PdpNina.getFrequentlyPurchased)             
end                                                                                         
                                                                                            
Then("I should see the Color Product's Entire Collection section") do                       
  expect(page).to have_content(@PdpNina.getEntireCollection)              
end                                                                                         
                                                                                            
Then("I should see Color Product's Bundle Price") do                                        
  expect(page).to have_content(@PdpNina.getBundlePrice)            
end                                                                                         

#Size PDP
When("I go to the Size Product's Details page") do
  @header_page.find_search('DMJLSLA')
  @header_page.click_find_btn
  @PdpNina.clickSizeProduct
end

Then("I should see the Size Product's description section") do
  expect(page).to have_content(@PdpNina.getDescription) 
end

Then("I should see the Size Product's title") do
  expect(page).to have_content(@PdpNina.getName)    
end

Then("I should see the Size Product's code") do
  expect(page).to have_content(@PdpNina.getCode)   
end

Then("I should see the Size Product's item number") do
  expect(page).to have_content(@PdpNina.getProductIdNumber) 
end

Then("I should see the Size Product's specifications") do
  expect(page).to have_content(@PdpNina.getSpecs)        
end

Then("I should see the Size Product's size selection list") do
  expect(page).to have_content(@PdpNina.getSizeOptions) 
end

Then("I should see the Size Product's price options") do
  expect(page).to have_content(@PdpNina.getSizePriceOption)
end

Then("I should see the Size Product's Print button enabled") do
  expect(page).to have_content(@PdpNina.getPrintBtn) 
end

Then("I should see the Size Product's breadcrumbs") do
  expect(page).to have_content(@PdpNina.getBreadcrumbs)  
end

Then("I should see the Size Product's Brand Logo") do
  expect(page).to have_content(@PdpNina.getBrandLogo) 
end


#Buying Options 

When("I click one of the buying options") do
  @PdpNina.clickBuyingOptionsLink
end

Then("I should see that option's info expand") do
  expect(page).to have_content(@PdpNina.getSizeOptionsExpanded) 
end

Then("I should see the Size Option's code") do
  expect(page).to have_content(@PdpNina.getSizeCode)
end

Then("I should see the Size Product's Shipping Information") do
  expect(page).to have_content(@PdpNina.getSizeShipping)
end

Then("I should see the Size Product's Quantity") do
  expect(page).to have_content(@PdpNina.getSizeQty)
end

Then("I should see the Size Product's Add to Cart button enabled") do
  expect(page).to have_content(@PdpNina.getSizeAddToCartBtn)
end

Then("I should see the Size Product's Add to My List button enabled") do
  expect(page).to have_content(@PdpNina.getSizeAddToListsBtn)
end

Then("I should see the Size Product's Store Availability information") do
  expect(page).to have_content(@PdpNina.getSizeAvailability)
end

