class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :shortname
      t.integer :meetup_category_id

      t.timestamps
    end
  end
end
