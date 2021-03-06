class UsersController < ApplicationController
    def create 
        user = User.create(user_params)
        cart = Cart.create
        
        cart.user = user
    
        
        session[:user_id] = user.id
        session[:cart_id] = cart.id
        cookies[:cart_id] = cart.id
        # byebug
        
        render json: {
          logged_in: true,
          user: current_user,
          cart: {
            id: current_cart.id,
            items: current_cart.items,
            # total: current_cart_total
        }
          # order: {
          #   id: order.id? order.id : ""
          # }
        }
    end


    private
 
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end

