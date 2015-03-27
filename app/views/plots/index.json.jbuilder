json.array!(@plots) do |plot|
  json.extract! plot, :id, :is_available, :area, :cash_price, :installment_amount, :term_deposit_amount, :total_installments, :housing_project_id, :user_id, :beacon_code, :designation, :image_map_coordinates, :image_map_shape, :state, :street_address, :description
  json.url plot_url(plot, format: :json)
end
