class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :url
      t.string :source

      t.timestamps
    end
  end
end
