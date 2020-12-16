class OrdersController < ApplicationController
    def create
        
            # byebug 
            order = Order.create
            # cart = Cart.find_by(params[:cart_id])
            current_cart = Cart.find_by(params[:cart_id])
            params[:cart_id]= current_cart.id
            order.cart_id = params[:cart_id]
            order.save
            # order.cart = current_cart
            # order.save
            setup_new_cart
        
        
        render json: {
            cart: {
                id: current_cart ? current_cart.id : "",
                items: current_cart ? current_cart.items : [],
                # total: current_cart ?  current_cart_total : 0
            }
        }
        
    end
end
