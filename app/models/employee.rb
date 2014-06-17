class Employee < ActiveRecord::Base
	has_one :user, :as => :profile
end
