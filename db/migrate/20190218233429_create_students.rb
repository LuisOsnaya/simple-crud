class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :first_last_name
      t.string :second_last_name
      t.string :status

      t.timestamps
    end
  end
end
