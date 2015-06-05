class ChangeActivityAndActivityColumnNames < ActiveRecord::Migration
  def change
  	rename_column :activity_types, :activity_type_name, :name 
    rename_column :activities, :activity_name, :name 
  end
end
