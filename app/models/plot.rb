class Plot < ActiveRecord::Base
  belongs_to :housing_project
  belongs_to :user

  serialize :image_map_coordinates




  def tree_name
    self.street_address.split(" ")[1].downcase
  end

  def url_friendly_street_address
    self.street_address.gsub(" ", "_").downcase
  end

  def street_name_and_number
    number = self.street_address.split(" ")[0].downcase
    name = self.street_address.split(" ")[1].downcase
    street = self.street_address.split(" ")[2].downcase
    name_and_number = "#{name}_#{street}_#{number}"
  end
end
