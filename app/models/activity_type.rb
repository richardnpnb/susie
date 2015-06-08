class ActivityType < ActiveRecord::Base

validates_presence_of :name

# #00425 This was needed before we renamed columns back to standard "name" and "parent_id" in #00435
#alias_attribute :name, :activity_type_name

# added line below #00425 for auditing records
audited :allow_mass_assignment => true  

# added line below #00425
has_many :activities

end
