class Activity < ActiveRecord::Base

	# added line below #00425
	belongs_to :activity_type
	
    # #00440 - next 2 lines: setting up self referencing in formtastic
	# http://stackoverflow.com/questions/6097288/how-can-i-do-self-reference-with-ruby-on-rails
	# http://guides.rubyonrails.org/association_basics.html
	belongs_to :parent_activity, :foreign_key => "parent_id", :class_name => "Activity"
    has_many :activities, :foreign_key => "parent_id"

	validates_presence_of :name

end
