class RestaurantPizzasController < ApplicationController

    def index
        restaurantpizzas = RestaurantPizza.all
        render json: restaurantpizzas, except: [:created_at,:updated_at]

    end

    def create
        restaurantpizzas = RestaurantPizza.create!(restaurantpizzas_params)
        render json: restaurantpizzas, status: :created
        
    end
    def show
        restaurantpizzas = find_restaurantpizzas
        render json: restaurantpizzas

    end
    def update
    
      restaurant = find_restaurantpizzas
      restaurant.update!(restaurantpizzas_params)
  
     end 

   private
  
    def find_restaurantpizzas
        RestaurantPizza.find_by(id: params[:id])
    end
  
    def restaurantpizzas_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end
  

    
end



