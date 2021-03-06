ActiveAdmin.register Activity do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

# #00443 - Adding permitted stronmg params for creating records in ActiveAdmin
# Prob shouldn't allow this, just add through user interface

permit_params :name, :user_id, :parent_id, :activity_type_id

csv do
	column :id
	column :name
	column :activity_type_id
	column :parent_id
end

end
