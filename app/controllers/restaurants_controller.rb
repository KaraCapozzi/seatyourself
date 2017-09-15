class RestaurantsController < ApplicationController
before_action :ensure_loged_in, except: [:show, :index]

  def index
    @restaurants = Restaurant.all
    @reservation = Reservation.new
    @user = User.new

  end

  def new
    @restaurant = Restaurant.new
    @user = User.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
  end
end
