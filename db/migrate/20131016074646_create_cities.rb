class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.references :state
      t.string :state_id

      t.timestamps
    end
    add_index :cities, :state_id
  end
end
