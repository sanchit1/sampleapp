class UsersController < ApplicationController
  def new
@user=User.new
 @title='Sign up'
end

def create
@user = User.new(params[:user])
if @user.save

flash[:success] = "Welcome to Lec Pool!"
redirect_to @user
else
@title = "Sign up"
render 'new'
end
end


def show
@user=User.find(params[:id])
end
 end
