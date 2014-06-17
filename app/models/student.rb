class Student < ActiveRecord::Base
	attr_accessor :email,:password
	has_one :user, :as => :profile
	validates :name, :surname, :specialization, :email, :password, presence: true
end
