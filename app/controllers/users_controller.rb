class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.phone_number = params[:user][:phone_number]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]


    if @user.save
      redirect_to restaurants_path(@restaurant)
      flash[:notice] = "Welcome, please seat yourself!"
       else
        render 'new'

    end


  end

  def edit
    @reservation = Reservation.find(params[:reservation_id])
    @user = User.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:reservation_id])
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.phone_number = params[:user][:phone_number]

    if @user.save
      redirect_to restaurants_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to restaurants_path
      flash[:notice] = 'User deleted'
    end
  end

end
