class CocktailsController < ApplicationController

    before_action :set_cocktail, only: [:index, :new, :show, :create, :ingredients, :doses]

    # GET /cocktails
    def index
      @cocktails = Cocktail.all
    end 
  
    # GET /cocktails/1
    def show
    end
  
    # GET /cocktails/new
    def new
      @cocktail = Cocktail.new
    end
  
    # # GET /cocktails/1/edit
    # def edit
    # end
  
    # POST /cocktails
    def create
      @cocktail = Cocktailt.new(cocktail_params)
      @cocktail.save
    
      redirect_to cocktail_path(@cocktail)
    end
 
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_cocktail
        @cocktail = Cocktail.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def cocktail_params
        params.require(:cocktail).permit(:name, :ingredients, :doses)
      end
end


    # GET /restaurants/top
    # def top
    #   @restaurants = Restaurant.where('stars >= 8')
    # end
  
    # GET /restaurants/1/chef
    # def chef
    # end

        # PATCH/PUT /restaurants/1
    # def update
    #   if @restaurant.update(restaurant_params)
    #     redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    #   else
    #     render :edit
    #   end
    # end

        # # DELETE /restaurants/1
    # def destroy
    #   @restaurant.destroy
    #   redirect_to restaurants_url, notice: 'Drink was successfully destroyed.'
    # end
