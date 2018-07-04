class PersonTable < ActiveRecord::Migration[5.2]
  def change
    create_table :person do |person|
      person.string :name, null: false
      person.integer :house_id, null: false
      person.timestamps
    end
    add_index :person, :house_id
  end
end
