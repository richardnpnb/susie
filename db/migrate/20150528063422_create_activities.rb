class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :activity_type_id
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
