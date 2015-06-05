class AddUserIdToActivitiesAgain < ActiveRecord::Migration
  def change
    add_column :activity, :user_id, :integer
  end
end
