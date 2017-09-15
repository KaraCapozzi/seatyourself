class ReservationsController < ApplicationController
  def index
    @reservation = Reservation.new
    @restaurant = Restaurant.new
    @user = User.new
  end

  def new
   @reservation = Reservation.new
   @restaurant = Restaurant.new
   @user = User.new
  end

  def create
    @user = User.find(session[:user_id])
    @reservation = Reservation.new
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.people = params[:reservation][:people]

    @reservation.restaurant_id = params[:restaurant_id]
    @reservation.user_id = @user.id
    if @reservation.save!
      redirect_to user_path(session[:user_id])
      flash[:notice] = "Reservation confirmed."
    else
      render 'new'

    end
  end

  def update

  end

  def show
    @user = User.find(params[:user_id])
    @reservation = Reservation.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
