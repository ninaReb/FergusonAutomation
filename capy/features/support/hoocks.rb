Before do
    # @cart_page = CartPage.new   --- @variavel de instancia, fica visivel para todos
    using_wait_time 10 do
        visit "https://ferguson.com"
      end

    @Logon_page = Login.new
    @header_page = Header.new
    @pdp_page = PDP.new
    @MyList_page = MyList.new 
   
end
