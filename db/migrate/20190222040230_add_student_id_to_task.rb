class AddStudentIdToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :student_id, :integer
    add_foreign_key :tasks, :students, column: :student_id
  end
end
