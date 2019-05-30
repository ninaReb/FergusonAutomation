# frozen_string_literal: true

Given('I am on logged as B2B on ferguson desktop site') do
  @login_page.logon('akratz@mcfadyen.com', 'Admin1976')
  sleep 2
end

When('I go to the Product Details page of the product') do
  @header_page.find_search('M6190')

  @header_page.click_find_btn
end

Then('I should see the Product description section') do
  expect(page).to have_content(@pdpana_page.fetch_description_section)
end

Then('I should see the Product title') do
  expect(page).to have_content "Moen Align\xE2\x84\xA2 1.2 gpm Single Lever Handle High Arc Lavatory Faucet"
end

Then('I should see the Product code') do
  expect(@pdpana_page.fetch_product_code).to have_content 'M6190'
end

Then('I should see the Product item number') do
  expect(page).to have_content(@pdpana_page.fetch_product_item)
end

Then('I should see the Product specifications') do
  expect(page).to have_content(@pdpana_page.fetch_specifications_section)
end

Then('I should see the Product Shipping Information') do
  expect(page).to have_content(@pdpana_page.fetch_shipping_info_section)
  expect(page).to have_content(@pdpana_page.fetch_shipping_info_content)
end

Then('I should see the Product Quantity') do
  expect(page).to have_content(@pdpana_page.fetch_quantity_field)
end

Then('I should see the Product ADA, Green and Lead Law Compliant icons') do
  expect(page).to have_content(@pdpana_page.fetch_lead_law_icon)
  expect(page).to have_content(@pdpana_page.fetch_ada_icon)
  expect(page).to have_content(@pdpana_page.fetch_green_icon)
end

Then('I should see the Product price') do
  expect(page).to have_content(@pdpana_page.fetch_price)
end

Then('I should see the Add to Cart button enabled') do
  expect(page).to have_content(@pdpana_page.fetch_add_to_cart_btn)
end

Then('I should see the Add to My List button enalbed') do
  expect(page).to have_content(@pdpana_page.fetch_add_to_lists_btn)
end

Then('I should see the Print button enabled') do
  expect(page).to have_content(@pdpana_page.fetch_print_btn)
end

Then('I should see the path where the product are in') do
  expect(page).to have_content(@pdpana_page.fetch_product_path)
end

Then('I should see the product mark') do
  expect(page).to have_content(@pdpana_page.fetch_brand_logo)
end

Then('I should see the In Store Availability information') do
  expect(page).to have_content(@pdpana_page.fetch_in_store_availability)
  expect(page).to have_content(@pdpana_page.fetch_in_store_availability_content)
end

Then('I should see the Frequently Purchased Together section') do
  expect(page).to have_content(@pdpana_page.fetch_frequently_purchased)
end

Then('I should see the Entire Collection section') do
  expect(page).to have_content(@pdpana_page.fetch_entire_collection)
end

Then('I should see product price options') do
  puts 'verificar'
  # expext(page).to have_content(@pdpana_page.fetch_pro_pricing_opt)
  # expect(page).to have_content(@pdpana_page.fetch_list_pricing_opt)
  # expect(page).to have_content(@pdpana_page.fetch_no_pricing_opt)
end

When('I click on the product images options') do
  @pdpana_page.click_color_finish_bnickel
end

Then('I should see the selected color characteristcs') do
  expect(page).to have_content 'Single Lever Handle High Arc Lavatory Faucet in Brushed Nickel'
  expect(page).to have_content '(Pricing is for Brushed Nickel)'
  # expect(page).to have_content(@pdpana_page.fetch_specification_color_finish) VERIFICAR
end

When('I click on the No Pricing option') do
  puts 'verificar'
  # @pdpana_page.select_no_pricing_opt
end

Then('I should see the content {string} on the price place') do |_pcontent|
  puts 'verificar'
  # pcontent = 'Call us for price'
  # expect(page).to have_content(pcontent)
end

When('I click on the Add to Cart button') do
  @pdpana_page.click_add_to_cart_btn
end

Then('I should see a briefly message {string} with the Checkout Now link') do |cart_message|
  cart_message = '1 item(s) added to Cart Checkout Now'
  # expect(page).to have_content(cart_message)
  expect(@pdpana_page.fetch_checkout_message_Link).to include(cart_message)
  #  expect(page).to have_content(@pdpana_page.fetch_checkout_message_Link)
end

Then('I should see the cart icon be increased') do
  expect(@pdpana_page.fetch_cart_amount).to eql(1)
end

When('I click on the Add to My Lists button') do
  @pdpana_page.click_add_to_mylists_btn
end

Then('I should see the Add to My Lists modal be opened') do
  expect(page).to have_content(@pdpana_page.fetch_add_mylist_modal)
end

When('I click on Check Other Stores link') do
  @pdpana_page.click_check_others_info_link
end

Then('I should see the Check Availability modal be opened') do
  expect(page).to have_content(@pdpana_page.fetch_check_availability_modal)
end

When('I click on See Whats Available link') do
  expect(page).to have_content(@pdpana_page.click_see_whats_available_link)
end

When('I hover over on the product image') do
  @pdpana_page.zomm_mouse_image
end

Then('I should see the product part zoom in a new window') do
  # puts 'needs to verify'
  ## expect(page).to have_content(@pdpAna_page.getModalHoverImage)
  expect(page).to have_content(@pdpana_page.fetch_hover_image_modal)
end
