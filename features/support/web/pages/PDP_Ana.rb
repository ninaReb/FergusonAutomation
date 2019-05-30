# frozen_string_literal: true

class PdpAnaPage
  include Capybara::DSL

  # ---------------------- CLICK METHODS-----------------------------------------------
  def click_check_others_info_link
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[2]/p[2]/a').click
  end

  def click_see_whats_available_link
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[4]/p[2]/a').click
  end

  def click_color_finish_pchrome
    find('img[title="Polished Chrome"]').click
  end

  def click_color_finish_mblack
    find('img[title="Matte Black"]').click
  end

  def click_color_finish_bnickel
    find('img[title="Brushed Nickel"]').click
  end

  def click_product_video
    find('img[data-video="300770755"]').click
  end

  def click_first_prodocut_img
    find('img[itemprop="contentUrl", data-index="0"]').click
  end

  def click_second_prod_img
    find('img[itemprop="contentUrl", data-index="1"]').click
  end

  def click_add_to_cart_btn
    find('input[value="ADD TO CART"]').click
  end

  def click_entire_collection_viewall_btn
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]/a').click
  end

  def click_print_btn
    find('#js-down-pdf').click
  end

  def click_add_to_mylists_btn
    find('#singleForm > div.total-content > div.total-button > input.button.tertiary.form-control.js-pls-select-sku').click
  end

  def click_expand_specifications_btn
    find('#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > p > a').click
  end

  def click_entire_collection_right_arrow
    find('#wrapper > main > div > div.row > div.entire-collection.row > div > div.carousel-head > div > a.pager-next').click
  end

  def click_entire_collection_left_arrow
    find('#wrapper > main > div > div.row > div.entire-collection.row > div > div.carousel-head > div > a.pager-prev').click
  end

  def click_price_btn
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]').click
  end

  def click_checkout_msg_link
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[3]/a').click
  end

  # --------------------SELECT AND HOVER METHODS------------------------------------------------
  def select_no_pricing_opt
    drop = find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]/div/ul/div/li[3]')
    drop_parent = find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[1]')
    drop.find(drop, from: drop_parent).select
  end

  def zomm_mouse_image
    zoom = find(:xpath, '/html/body/div[6]')
    zoom.hover
  end

  def fetch_hover_image_modal
    find('body > div.zoomWindowContainer > div')
  end

  #--------------------GET METHODS--------------------------------------------------------------------
  def fetch_check_availability_modal
    find(:xpath, '//*[@id="checkStores"]/div/div')
  end

  def fetch_description_section
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/div[2]').text
  end

  def fetch_product_code
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[1]/p[2]/span')
  end

  def fetch_product_item
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[1]/p[3]')
  end

  def fetch_specifications_section
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[2]')
  end

  def fetch_shipping_info_section
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[3]')
  end

  def fetch_shipping_info_content
    find('js_inventory_state').text
  end

  def fetch_quantity_field
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[2]/ul/li[2]/fieldset/dl/dd/input[1]')
  end

  def fetch_ada_icon
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[1]')
  end

  def fetch_green_icon
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[2]')
  end

  def fetch_lead_law_icon
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[2]/i[3]')
  end

  def fetch_price
    find(:xpath, '//*[@id="singleForm"]/div[2]')
  end

  def fetch_add_to_cart_btn
    find('input[value="ADD TO CART"]')
  end

  def fetch_add_to_lists_btn
    find('#singleForm > div.total-content > div.total-button > input.button.tertiary.form-control.js-pls-select-sku')
  end

  def fetch_print_btn
    find('#js-down-pdf')
  end

  def fetch_product_path
    find(:xpath, '//*[@id="wrapper"]/main/div/div[1]')
  end

  def fetch_brand_logo
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[1]/img')
  end

  def fetch_in_store_availability
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[1]')
  end

  def fetch_in_store_availability_content
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[5]/div[2]/p[1]').text
  end

  def fetch_frequently_purchased
    find(:xpath, '//*[@id="js-bundle-builder-form"]/div[4]~')
  end

  def fetch_entire_collection
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]')
  end

  def fetch_pro_pricing_opt
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]/div/ul/div/li[1]')
  end

  def fetch_list_pricing_opt
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]/div/ul/div/li[2]')
  end

  def fetch_no_pricing_opt
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[1]/div[4]/div/span/div/div[2]/div/ul/div/li[3]')
  end

  def fetch_checkout_message_Link
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[3]/a')
  end

  def fetch_cart_amount
    find(:xpath, '//*[@id="wrapper"]/header/div[4]/div[3]/ul/li[2]/a/span/span[2]')
  end

  def fetch_add_mylist_modal
    find(:xpath, '//*[@id="wishListModal"]/div/div')
  end

  def fetch_specification_color_finish
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[2]/div/dl[12]/dd/div')
  end

  def fetch_checkout_msg
    find(:xpath, '//*[@id="singleForm"]/div[2]/div[3]').text
  end

  def fetch_recommended_accessories_section
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[3]/div')
  end

  def fetch_documents_section
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[2]')
  end

  def fetch_annonimous_user_banner_section
    find(:xpath, '#wrapper > main > div > div.row > div.col-lg-4.col-md-4 > div.pro-docs > ul > li:nth-child(1) > a')
  end

  def fetch_bread_crumbs_section
    find(:xpath, '//*[@id="wrapper"]/main/div/div[1]')
  end

  def fetch_color_finish_section
    find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[1]/div')
  end

  def fetch_image_container
    find(:xpath, '/html/body/div[6]')
  end

  def fetch_product_images
    find(:xpath, '//*[@id="js-thumb-img"]')
  end
end
