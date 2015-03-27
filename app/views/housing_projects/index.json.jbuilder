json.array!(@housing_projects) do |housing_project|
  json.extract! housing_project, :id, :cover_image, :gps_coordinates, :name, :plot_layout_image, :plot_layout_image_dimensions, :state, :subdomain, :summary
  json.url housing_project_url(housing_project, format: :json)
end
