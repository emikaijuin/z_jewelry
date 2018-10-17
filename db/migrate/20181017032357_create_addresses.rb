class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street_primary
      t.string :street_secondary
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country
      t.timestamps
    end
  end
end
