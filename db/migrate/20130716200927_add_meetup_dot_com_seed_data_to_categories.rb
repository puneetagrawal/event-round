class AddMeetupDotComSeedDataToCategories < ActiveRecord::Migration
  def change
    p "Adding Seed data from Meetup[dot]com categories to eventsroundme."

    url = "https://api.meetup.com/2/categories?&sign=true&page=40&key=#{MEETUP_API_KEY}"

    p "url: #{url}"

    data = RestClient.get url

    JSON.parse(data)["results"].each do |temp|
      Category.create(
        :name               => temp["name"],
        :shortname          => temp["shortname"],
        :meetup_category_id => temp["id"]
      )
    end
  end
end
