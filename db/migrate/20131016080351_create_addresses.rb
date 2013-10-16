class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :complement
      t.string :number
      t.string :cep
      t.references :city, index: true

      t.timestamps
    end
  end
end
