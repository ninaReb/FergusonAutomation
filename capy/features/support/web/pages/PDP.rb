class PDP
    include Capybara::DSL
    
   def ClickAddToCart_Button
      using_wait_time 15 do
        find(:xpath, '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div[4]/input[9]').click
       #click_button '//*[@id="wrapper"]/main/div/div[2]/div[2]/div[1]/div/div[2]/div[2]/div[4]/input[9]' 
      end
   end
end