class CreateOpenHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :open_houses do |t|
      t.datetime :date
      t.belongs_to :realtor
      t.belongs_to :property

      t.timestamps
    end
  end
end
