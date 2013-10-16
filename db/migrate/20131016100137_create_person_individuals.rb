class CreatePersonIndividuals < ActiveRecord::Migration
  def change
    create_table :person_individuals do |t|
      t.string :name
      t.string :surname
      t.string :gender
      t.string :cpf
      t.date :birthdate

      t.timestamps
    end
  end
end
