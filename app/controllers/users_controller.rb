class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.phone_number = params[:user][:phone_number]

    if @user.save
      redirect_to restaurants_path(@restaurant)
      flash[:notice] = "Welcome, please seat yourself!"
       else
        render 'new'

    end


  end

  # def index
  # end

  #
  # def edit
  # end
end
