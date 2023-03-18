class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
#     # added rescue_from
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
    
    def index
        restaurantpizzas = RestaurantPizza.all
        render json: restaurantpizzas
    end

    def create
        restaurantpizzas = RestaurantPizza.create!(restaurantpizzas_params)
        render json: restaurantpizzas, status: :created
        
    end
    def show
        restaurantpizzas = find_restaurantpizzas
        render json: restaurantpizzas

    end

   private
  
    def find_restaurantpizzas
        RestaurantPizza.find_by(id: params[:id])
    end
  
    def restaurantpizzas_params
      params.permit(:price, :pizza_id, :restaurant_id)
    end
  
    def render_not_found_response
      render json: { error: "RestaurantPizza not found" }, status: :not_found
    end
  
    def render_unprocessable_entity_response(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
    
end



