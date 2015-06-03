class ChangeActivityAndActivityColumnNames < ActiveRecord::Migration
  def change
  	rename_column :activity_type, :activity_type_name, :name 
  	rename_column :activity, :activity_name, :name 
  end
end
