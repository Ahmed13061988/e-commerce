class SessionsController < ApplicationController
    def create 
        user = User.find_by(email: params[:user][:email])
     
        if user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            session[:cart_id] = user.carts.last.id
            cookies[:cart_id] = current_cart.id
            render json: {
                logged_in: true,
                user: user,
                cart: {
                    id: current_cart.id,
                    items: current_cart.items,
                    total: current_cart_total
                }
            }
        end
    end
    
    def logout
        reset_session
        cookies.delete("cart_id")
        render json: {
            logged_out: true
        }
    end
end
