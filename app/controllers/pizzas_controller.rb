class PizzasController < ApplicationController
    
    def index
        pizza = Pizza.all
        render json: pizza,except:[:created_at,:updated_at]
    end
    def show
        restaurant = find_restaurant.as_json(include: { pizzas: { only: [:id, :name, :ingredients] } }, except: [:created_at,:updated_at])
        render json: restaurant
    end
    def create
      render json: Restaurant.create!(restaurant_params)
    end
    def update
        restaurant = find_restaurant
        restaurant.update!(restaurant_params)
      end 
   
    
    def destroy
        restaurant = find_restaurant
        restaurant.restaurant_pizzas.destroy_all
        restaurant.destroy
        head :no_content
    end

    private
    def find_restaurant
       Restaurant.find_by(id: params[:id])
     end
     def restaurant_params
      params.permit(:name, :ingredients)
    end


end
