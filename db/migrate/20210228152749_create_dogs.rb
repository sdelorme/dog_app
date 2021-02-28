class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :name
      t.integer :age
      t.string :color
      t.string :sex

      t.timestamps
    end
  end
end
