class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.references :student, null: false, foreign_key: true
      t.string :name
      t.integer :phone_number
      t.string :address

      t.timestamps
    end
  end
end
