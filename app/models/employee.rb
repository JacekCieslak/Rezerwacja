class Employee < ActiveRecord::Base
	attr_accessor :email,:password
	has_one :user, :as => :profile
	validates :name, :surname, :degree, :email, :password, presence: true
end
