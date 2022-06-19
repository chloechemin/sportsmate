class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title
      t.text :description
      t.string :level
      t.string :location
      t.float :price
      t.integer :group_size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
