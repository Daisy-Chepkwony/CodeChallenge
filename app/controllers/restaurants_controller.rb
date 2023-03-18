class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # added rescue_from
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  
    def index
        restaurant = Restaurant.all
        render json: restaurant
    end
    def show
        restaurant = find_restaurant
        render json: restaurant
        
    end
    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
    end

    private
    def find_restaurant
       Restaurant.find_by(id: params[:id])
     end

    def render_not_found_response
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    def render_unprocessable_entity_response(invalid)
      render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end


end





