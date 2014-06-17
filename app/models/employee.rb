class Employee < ActiveRecord::Base
	attr_accessor :email,:password
	has_one :user, :as => :profile
	has_many :lessons
	validates :name, :surname, :degree, :email, :password, presence: true
end
