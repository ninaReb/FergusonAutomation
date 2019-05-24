class Header
    include Capybara::DSL
    
   def FindSearch
        using_wait_time 5 do
            find(:xpath, '//*[@id="react-type-ahead-normal"]/fieldset/input[1]').set("ccc")
        end
   end

   def ClickFind_Button
    using_wait_time 10 do
       find(:xpath, '//*[@id="react-type-ahead-normal"]/fieldset/input[2]').click
       #click_button '//*[@id="react-type-ahead-normal"]/fieldset/input[2]' 
     end
  end
  
end