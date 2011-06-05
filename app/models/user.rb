class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
email_regex = /\A[\w+\-.]+@iitk.ac.in/i


attr_accessor :password
attr_accessible :name, :email, :password, :password_confirmation,:rollno,:department,:cn1,
:cn2,:cn3,:cn4,:cn5,:cn6,:cn7

validates :email, :presence =>{:message=> "can't be blank"},:uniqueness => { :case_sensitive => false }
validates:email, :format => { :with => email_regex ,:message=>"id of IITK should be used "} 
validates :rollno,:presence=> true
validates :name, :presence => true,
:length => { :maximum => 50 }

validates :password, :presence => true,
:confirmation => true,
:length => { :within => 6..40 }

before_save :encrypt_password

def has_password?(submitted_password)
encrypted_password == encrypt(submitted_password)
end

def self.authenticate(email, submitted_password)
user = find_by_email(email)
return nil if user.nil?
return user if user.has_password?(submitted_password)
end

private
def encrypt_password
self.salt = make_salt if new_record?
self.encrypted_password = encrypt(password)
end


def self.authenticate_with_salt(id, cookie_salt)
user = find_by_id(id)
(user && user.salt == cookie_salt) ? user : nil
end





def encrypt(string)
secure_hash("#{salt}--#{string}")
end
def make_salt
secure_hash("#{Time.now.utc}--#{password}")
end
def secure_hash(string)
Digest::SHA2.hexdigest(string)
end
end

