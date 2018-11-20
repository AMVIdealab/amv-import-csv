class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.string :name
      t.string :short_description
      t.text :description
      t.string :street
      t.string :street_number
      t.string :city
      t.string :province
      t.string :zipcode
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :category

      t.timestamps
    end
  end
end
