class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @reservation = Reservation.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    # @restaurant = Restaurant.all
  end
end
