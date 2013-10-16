class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone1
      t.string :phone2
      t.string :phone3
      t.string :email

      t.timestamps
    end
  end
end
