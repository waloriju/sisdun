class CreatePersonEntities < ActiveRecord::Migration
  def change
    create_table :person_entities do |t|
      t.string :name
      t.string :trade_name
      t.string :cnpj

      t.timestamps
    end
  end
end
