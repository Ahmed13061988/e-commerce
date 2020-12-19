class OrdersController < ApplicationController
    def create
        
            #    byebug 
             current_cart = Cart.all
             order_items = current_cart.last.items
            #  a = order_items.map{|item| item } 
               a = order_items.each { |key, value| puts "k: #{key}, v: #{value}" }

             
            
            

             
            
        
             setup_new_cart
            #  byebug
        
        
        render json: {
            order: {
                id:  current_cart,
                items: a 
                 } }
        
    end
end
