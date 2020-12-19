class OrdersController < ApplicationController
    def create
        
            #    byebug 
            #  item = Item.find(params["item"]["id"])
            # cart = Cart.find_by(params[:cart_id])
             current_cart = Cart.all
             order_items = current_cart.last.items
            #  a = order_items.map{|item| item } 
               a = order_items.each { |key, value| puts "k: #{key}, v: #{value}" }
             byebug
            #  a = order_items.each do |item| 

             
            
            

             
            
            # # item =current_cart.cart_items.find_by(item_id: params["item"]["itemId"])
            # params[:cart_id]= current_cart
            # order.cart_id = params[:cart_id]
            # order.save

            # # byebug
            #  order_items = []
            #  order_items.push(current_cart.items)
            # # order.cart = current_cart
            # # order.save
            #   byebug
             setup_new_cart
            #  byebug
        
        
        render json: {
            order: {
                id:  current_cart,
                items: a 
                 }
                # total: current_cart ?  current_cart_total : 0
                # id: current_cart.id,
                # items: current_cart.items
         }
        
    end
end
