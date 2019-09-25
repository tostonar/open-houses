class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :bedrooms
      t.boolean :garage

      t.timestamps
    end
  end
end
