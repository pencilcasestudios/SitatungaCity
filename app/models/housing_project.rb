class HousingProject < ActiveRecord::Base
  has_many :plots

  serialize :gps_coordinates
  serialize :plot_layout_image_dimensions

  def image_map_width
    self.plot_layout_image_dimensions.first
  end

  def image_map_height
    self.plot_layout_image_dimensions.last
  end
end
