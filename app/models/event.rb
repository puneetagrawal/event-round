class Event < ActiveRecord::Base
  attr_accessible  :source, :url,
    :address, :city, :state, :country, 
    :starting_at, :ending_at, :time_zone,
  	:name, :title, :host, :short_description, :long_description, 
  	:registration_starts_at, :registration_ends_at, :registration_url

  	
end
