class Chat < ActiveRecord::Base

	belongs_to :first_member, class_name: User
	belongs_to :second_member, class_name: User

end
