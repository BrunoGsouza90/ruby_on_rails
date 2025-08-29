class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :model
      t.string :name

      t.timestamps
    end
  end
end
