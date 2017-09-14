class ReservationsController < ApplicationController
  def index
    @reservation = Reservation.new
  end

  def new
   @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.people = params[:reservation][:people]

    if @reservation.save!
      redirect_to restaurants_path(@restaurant)
      flash[:notice] = "Reservation confirmed."
    else
      render 'new'

    end
  end

  def update

  end



end
