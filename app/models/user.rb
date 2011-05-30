class User < ActiveRecord::Base
email_regex= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
attr_accessible :name,:email
validates :name,:presence=>true,:length=>{:maximum=>40}
validates :email,:presence=>true,:uniqueness=>{:case_sensitive=>true},:format=>{:with=>email_regex}

end
