class ChangeActivityParentIdColumn < ActiveRecord::Migration
  def change
  	rename_column :activities, :parent_activity_id, :parent_id 
  end
end
