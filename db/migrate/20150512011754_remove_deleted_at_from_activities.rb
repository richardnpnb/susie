class RemoveDeletedAtFromActivities < ActiveRecord::Migration
  def change
    remove_index :activities, :deleted_at
    remove_column :activities, :deleted_at, :datetime
  end
end
