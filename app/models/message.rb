class Message < ActiveRecord::Base

	belongs_to :sender, class_name: User
	belongs_to :first_member, class_name: User
	belongs_to :chat
	validates_presence_of :message
end
