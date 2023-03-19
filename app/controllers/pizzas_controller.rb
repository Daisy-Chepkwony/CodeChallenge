class PizzasController < ApplicationController
    
    def index
        pizza = Pizza.all
        render json: pizza,except:[:created_at,:updated_at]
    end
    def show
        pizza = find_pizza
        render json: pizza, except: [:created_at,:updated_at]
    end
    def create
      render json: Pizza.create!(pizza_params)
    end
    def update
        pizza = find_pizza
        pizza.update!(pizza_params)
      end 
   
    
    def destroy
        pizza = find_pizza
        pizza.restaurant_pizzas.destroy_all
        pizza.destroy
        head :no_content
    end

    private
    def find_pizza
        Pizza.find_by(id: params[:id])
     end
     def pizza_params
      params.permit(:name, :ingredients)
    end


end
