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

    if @reservation.save
      redirect_to restaurant_path(@reservation)
      flash[:notice] = "Reservation confirmed."
    else
      render 'new'
    end
  end
end
