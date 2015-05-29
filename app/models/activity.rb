class Activity < ActiveRecord::Base

	# added line below #00425
	belongs_to :activity_type
	
    # #00440 - next 2 lines: setting up self referencing in formtastic
	belongs_to :parent_activity, :foreign_key => "parent_id", :class_name => "Activity"
    has_many :activities, :foreign_key => "parent_id"

	validates_presence_of :name

end
