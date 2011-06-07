class UsersController < ApplicationController
before_filter :authenticate, :only => [ :update]
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

def index
@title = "All users"
@users = User.paginate(:page => params[:page])
end
def show
@user = User.find(params[:id])

@title = @user.name
end
def new
@user = User.new
@title = "Sign up"
end
def create
@user = User.new(params[:user])
if @user.save
sign_in @user
flash[:success] = "Welcome to lecpool!"
redirect_to @user
else
@title = "Sign up"
render 'new'
end
end
def edit
@user = User.find(params[:id])
@title = "Edit user"
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

def correct_user
@user = User.find(params[:id])
redirect_to(root_path) unless current_user?(@user)
end

end

