class Student < ActiveRecord::Base
	attr_accessor :email,:password
	has_one :user, :as => :profile
	has_many :less_studs
	validates :name, :surname, :specialization, :email, :password, presence: true
end
