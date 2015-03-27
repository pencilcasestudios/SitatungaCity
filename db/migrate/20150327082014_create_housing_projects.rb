class CreateHousingProjects < ActiveRecord::Migration
  def change
    create_table :housing_projects do |t|
      t.string :cover_image
      t.string :gps_coordinates
      t.string :name
      t.string :plot_layout_image
      t.string :plot_layout_image_dimensions
      t.string :state
      t.string :subdomain
      t.text :summary

      t.timestamps null: false
    end
  end
end
