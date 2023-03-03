class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.string :gender
      t.string :class_name

      t.timestamps
    end
  end
end
