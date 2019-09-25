class CreateRealtors < ActiveRecord::Migration[5.2]
  def change
    create_table :realtors do |t|
      t.string :name
      t.string :brokerage
      t.integer :years_experience

      t.timestamps
    end
  end
end
