class Activity < ActiveRecord::Base

	# added line below #00425
	belongs_to :activity_type
	belongs_to :activity

	validates_presence_of :activity_name

end
