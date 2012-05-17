class User < ActiveRecord::Base
	acts_as_authentic
  attr_accessible :username, :email, :battlenet, :password, :password_confirmation
end
