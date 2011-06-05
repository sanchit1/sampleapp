class PagesController < ApplicationController
 
def index
if params[:search]
@pages=Page.find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
else
@pages=Page.find(:all)
end
end



 def home
@title="Home"
  end
def about
@title="About"
end
  def contact
@title="Contact"  
end
def help
@title="Help"
end
def contact
@title="Contact"  
end
end
