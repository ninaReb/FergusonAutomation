class PdpPageNina
  include Capybara::DSL

  #Sections
  def setSections
    $Description = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/div[2]')
    $Brand_Logo = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[1]/p[1]/img')
    $Price = find(:xpath, '//*[@id="singleForm"]/div[2]')
    $Frequently_Purchased =  find(:xpath, '//*[@id="js-bundle-builder-form"]/div[4]~')
    $Recommended_Accessories = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[3]/div')
    $Entire_Collection = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]')
    $Documents = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[2]')
    $Anon_User_Banner = find(:xpath, '#wrapper > main > div > div.row > div.col-lg-4.col-md-4 > div.pro-docs > ul > li:nth-child(1) > a')
    $Specifications = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[2]')
    $Breadcrumbs = find(:xpath, '//*[@id="wrapper"]/main/div/div[1]')
    $Color_finish = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[1]/div/div[2]/div[1]/div')
    $Zoom_Image_Container = find(:xpath, '/html/body/div[6]')
    $Product_Images = find(:xpath, '//*[@id="js-thumb-img"]')
    $Product_Code = find('#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > div > div:nth-child(2) > div.product-info > p.pro-id')
  end


  #Buttons
  def setButtons
    $Entire_Collection_View_All_Button = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[4]/div/div[1]/a')
    $Entire_Collection_Right_Arrow = find('#wrapper > main > div > div.row > div.entire-collection.row > div > div.carousel-head > div > a.pager-next')
    $Entire_Collection_Left_Arrow = find('#wrapper > main > div > div.row > div.entire-collection.row > div > div.carousel-head > div > a.pager-prev')
    $Add_To_Cart_Button = find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div[4]/input[9]')
    $Print = find('#js-down-pdf')
    $Add_To_Lists_Button = find('#singleForm > div.total-content > div.total-button > input.button.tertiary.form-control.js-pls-select-sku')
    $Add_To_Cart_Button = find('#singleForm > div.total-content > div.total-button > input.button.primary.form-control.js-pls-select-sku')
    $Expand_Specifications_Arrow = find('#wrapper > main > div > div.row > div.col-lg-8.col-md-8 > p > a')
    $Second_Image_Thumbnail = find('#js-thumb-img > a:nth-child(2) > img')
    $First_Image_Thumbnail = find('#js-thumb-img > a.active > img')
    $First_Color = find('#js-pls-select-container > a:nth-child(1) > img')
    $Second_Color = find('#js-pls-select-container > a:nth-child(2) > img')
  end

  #Checkboxes
  def setCheckboxes
  $Combo_Product_First_Checkbox = find(:xpath, '#js-bundle-builder-form > div.bundle-builder > div.product-select > div:nth-child(1) > p > label')
  end

  #Links
  def setLinks
  $Anon_Register_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[1]')
  $Anon_Login_Link = find(:xpath, '//*[@id="singleSku-productTotal"]/div/a[2]')
  end

  #Select lists
  def setSelects
  $Type_or_Size_Select = find('#js-pls-select-container > span > div > div.sim-head > span.current')
  end

  # ----------------------

  #Actions
  def clickAddToCartButton
    Add_To_Cart_Button.click
  end

  def clickViewAllInCollection
    Entire_Collection_View_All_Button.click
  end

  def checkComboProduct
    Combo_Product_First_Checkbox.click
  end

  def clickPrint
    Print.click
  end
<<<<<<< HEAD
=======

  def hoverZoomImage
    Zoom_Image_Container.hover
  end

  def clickAddToMyListsButton
    Add_To_Lists_Button.click
  end

  def clickEntireCollectionViewAll
    Entire_Collection_View_All_Button.click
  end

  def clickExpandSpecifications
      Expand_Specifications_Arrow.click
  end

  def clickFirstImage
    First_Image_Thumbnail.click
  end

  def clickSecondImage 
    Second_Image_Thumbnail.click
  end

  def clickEntireCollectionRightArrow
    Entire_Collection_Right_Arrow.click
  end

  def clickEntireCollectionLeftArrow
    Entire_Collection_Left_Arrow.click
  end


>>>>>>> master
end

  

  