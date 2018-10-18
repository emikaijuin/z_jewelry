class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :price
      t.integer :status, default: 0
      t.belongs_to :user
      t.references :address, foreign_key: true
      t.timestamps
    end
  end
end
