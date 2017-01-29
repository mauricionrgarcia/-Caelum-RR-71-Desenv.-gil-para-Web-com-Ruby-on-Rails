class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :destroy, :edit, :update]

  def index
    @restaurants = Restaurant.order :name

    respond_to do |format|
      format.html
      format.xml {render xml: @restaurants}
      format.json {render json: @restaurants}
    end
  end


  def show
    #@restaurant = Restaurant.find(params[:id])

    respond_to do |format|
      format.html
      format.xml {render xml: @restaurant}
      format.json {render json: @restaurant}
    end
  end

  def destroy
    #@restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to action: 'index'
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    #@restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new restaurant_params

    if @restaurant.save
      redirect_to(action: 'show', id: @restaurant)
    else
      render action: 'new'
    end

  end

  def update
    #@restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes restaurant_params
      redirect_to(action: 'show', id: @restaurant)
    else
      render action: 'edit'
    end
  end

  # => metodo utilizado para recuperar um restaurante
  private
  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # => método que recupera os valores provenientes do formulario
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :specialty)
  end
end
