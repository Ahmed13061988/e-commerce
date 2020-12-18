class OrdersController < ApplicationController
    def create
        
              byebug 
            order = Order.new
              
            # cart = Cart.find_by(params[:cart_id])
             current_cart = Cart.find_by(params[:cart_id])
            # item =current_cart.cart_items.find_by(item_id: params["item"]["itemId"])
            params[:cart_id]= current_cart
            order.cart_id = params[:cart_id]
            order.save

            # byebug
             order_items = []
             order_items.push(current_cart.items)
            # order.cart = current_cart
            # order.save
            #   byebug
             setup_new_cart
            #  byebug
        
        
        render json: {
            cart: {
                id: current_cart ? "" : current_cart.id,
                items: current_cart ? [] : current_cart.items
                 },
                # total: current_cart ?  current_cart_total : 0
                # id: current_cart.id,
                # items: current_cart.items
            order: {
                id: order.id,
                order_items: order_items
            }   
         }
        
    end
end
