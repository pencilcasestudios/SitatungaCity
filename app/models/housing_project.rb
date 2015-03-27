class HousingProject < ActiveRecord::Base
  has_many :plots

  attr_accessible :cover_image
  attr_accessible :gps_coordinates
  attr_accessible :name
  attr_accessible :plot_layout_image
  attr_accessible :plot_layout_image_dimensions
  attr_accessible :state
  attr_accessible :subdomain, uniqueness: true
  attr_accessible :summary

  serialize :gps_coordinates
  serialize :plot_layout_image_dimensions

  def image_map_width
    self.plot_layout_image_dimensions.first
  end

  def image_map_height
    self.plot_layout_image_dimensions.last
  end
end
