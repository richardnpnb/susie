
ActiveAdmin.register Audit do

# #00443 created all contents of this file

#Tried to get these two commands to work
#actions :all, except: [:update, :destroy]
#belongs_to :user
# Could add a side bar buit didn't work
#sidebar "Project Details", only: [:show, :edit] do
#    ul do
#      li link_to "Audit Users",    admin_audit_users_path(audit)
#      li link_to "Audit Activities", admin_audit_activities_path(audit)
#    end
# end

# Custom filters
#filter :user, collection: proc { User.order(:email) }
#filter :user, as: :select, collection: User.order(:name).collect { |user| [user.name, user.id] }


config.paginate = true
config.per_page = 5
#*** For p[agination if you have a very large database, you might want to disable SELECT COUNT(*) queries caused by the pagination info at the bottom of the page, use the folliwng line:
#  index pagination_total: false do
index do
  column :id
  column :action
  column "What", :auditable_type
  column "When", :created_at
  column "Who", :user
  #column :user_type
  #column :username
  column "Delta#", :version
  column "Where", :remote_address
end

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


end
