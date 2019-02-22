class AssignStudentController < ApplicationController
  def update
    task = Task.find(params[:task_id])
    task.update(student_id: params[:id])
    task.nil? ? not_found : (response_success task: task)
  end
end
