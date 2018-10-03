class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :description
      t.float :quantity
      t.timestamps
    end
  end
end
