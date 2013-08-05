class Category < ActiveRecord::Base
  attr_accessible :name, :shortname, :meetup_category_id
end
