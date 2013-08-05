class AddAttributesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :city, :string
    add_column :events, :country, :string
    add_column :events, :state, :string
    add_column :events, :starting_at, :datetime
    add_column :events, :ending_at, :datetime
    add_column :events, :time_zone, :string
    add_column :events, :address, :text
    add_column :events, :host, :string
    add_column :events, :title, :string
    add_column :events, :short_description, :text
    add_column :events, :long_description, :string
    add_column :events, :registration_starts_at, :datetime
    add_column :events, :registration_ends_at, :datetime
    add_column :events, :registration_url, :string
  end
end
