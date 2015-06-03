class CreateActivityTypes < ActiveRecord::Migration
  def change
    create_table :activity_types do |t|
      t.string :activity_type_name

      t.timestamps null: false
    end
  end
end
