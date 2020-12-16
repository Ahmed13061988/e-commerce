class CartsController < ApplicationController
    def add_item_to_cart
         # adding item to existing cart
         item = Item.find(params["item"]["id"])
        #  byebug
        if params[:cart_id] != ""
            #  byebug
             current_cart = Cart.find(params[:cart_id])
             current_cart.save
            #   byebug
                current_cart.items << item 
                current_cart.save
            # end
        else #creating a new cart
            cart = Cart.create 
            cart.save
            current_cart = cart 
            #  byebug
            session[:cart_id] = current_cart.id
            cookies[:cart_id] = current_cart.id
            # byebug
            params[:cart_id] = current_cart.id
            #  byebug
            current_cart.items << item 
            current_cart.save
          
        end 

        render json: {
            cart: CartSerializer.new(current_cart)
            
        }  
        # , total: current_cart_total 
      
         
    end

    def remove_item_from_cart
        #  byebug
        current_cart = Cart.find(params[:cart_id])
        item =current_cart.cart_items.find_by(item_id: params["item"]["itemId"])
        #  item = Item.find(params[:item][:itemId])
         
         
        # #   byebug
       
        # current_cart.items = current_cart.items.select { |i| i.id != item.id}
        #     #  byebug
        #  current_cart.items.delete(item)
        item.destroy 

        # current_cart.save
        # end

        render json: {
            cart: {
                id: current_cart.id,
                items: current_cart.items,
                #  total: current_cart_total
            }
        }  
    end
end