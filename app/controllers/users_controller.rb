class UsersController < ApplicationController
 
before_filter :authenticate, :only => [:edit, :update]
before_filter :correct_user, :only => [:edit, :update]

def course1
@user=User.find(params[:id])
end

def course2
@user=User.find(params[:id])
end
def course3
@user=User.find(params[:id])
end
def course4
@user=User.find(params[:id])
end
def course5
@user=User.find(params[:id])
end
def course6
@user=User.find(params[:id])
end

def course7
@user=User.find(params[:id])
end
def new
@user=User.new
 @title='Sign up'
end

def create
@user = User.new(params[:user])

respond_to do |format|
if @user.save
UserMailer.registration_confirmation(@user).deliver  #include this line in your users_controller.rb file
format.html { redirect_to(@user, :notice => 'User was successfully created.') }
format.xml  { render :xml => @user, :status => :created, :location => @user }
#flash[:success] = "Welcome to Lec Pool!"
#redirect_to @user
else
#@title = "Sign up"
#render 'new'
format.html { render :action => "new" }
format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
end
end
end

def show
@user=User.find(params[:id])
end


def edit
@user = User.find(params[:id])
@title = "Edit Profile"
end

def update
@user = User.find(params[:id])
if @user.update_attributes(params[:user])
flash[:success] = "Profile updated."
redirect_to @user
else
@title = "Edit user"
render 'edit'
end
end
def destroy
User.find(params[:id]).destroy
flash[:success] = "User destroyed."
redirect_to users_path
end

private
def authenticate
deny_access unless signed_in?
end
def correct_user
@user = User.find(params[:id])
redirect_to(root_path) unless current_user?(@user)
end


end





