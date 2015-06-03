class ActivityType < ActiveRecord::Base

#alias_attribute :name, :activity_type_name

# added line below #00425
has_many :activities

validates_presence_of :name

end
