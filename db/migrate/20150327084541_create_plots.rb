class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.references :housing_project, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.boolean :is_available
      t.decimal :area
      t.decimal :cash_price
      t.decimal :installment_amount
      t.decimal :term_deposit_amount
      t.decimal :total_installments
      t.string :beacon_code
      t.string :designation
      t.string :image_map_coordinates
      t.string :image_map_shape
      t.string :state
      t.string :street_address
      t.text :description

      t.timestamps null: false
    end
  end
end
