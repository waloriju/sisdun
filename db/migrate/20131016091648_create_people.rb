class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :status, default: 'ativo'
      t.references :capacity, polymorphic: true
      t.references :address, index: true
      t.references :contact, index: true

      t.timestamps
    end
  end
end
