class Activity < ActiveRecord::Base
	
	# change #003 added next 1 lines
    audited :allow_mass_assignment => true
    	
	# chnage #002 added next 1 lines
	belongs_to :user


end
