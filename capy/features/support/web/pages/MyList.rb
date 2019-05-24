class MyList
    include Capybara::DSL
    
    def Click_CreateNewList
        find(:xpath, '//*[@id="wrapper"]/main/div/div[3]/div[2]/div[2]/div/a[1]').click
    end

    def Fill_ListName(content)
        fill_in 'giftListName', :with => 'test ' + content 
    end

    def Click_Save
        find(:xpath, '//*[@id="js-creatNewGiftList-form"]/div[4]/div[2]/div/a[2]').click
    end

    
end

