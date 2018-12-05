class CreatePuppies < ActiveRecord::Migration[5.2]
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :age
      t.string :cuteness
      t.string :softness

      t.timestamps
    end
  end
end
