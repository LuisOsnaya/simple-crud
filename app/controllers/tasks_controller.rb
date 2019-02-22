class TasksController < ApplicationController
  def index
    response_success tasks: tasks_service({}).show_all
  end

  def show
    task = tasks_service(id: params[:id]).show
    task.empty? ? not_found : (response_success task: task)
  end

  def create
    task = tasks_service(params: task_params).create
    task.save ? (response_created task: task) : response_error
  end

  def destroy
    tasks_service(id: params[:id]).destroy
    response_success
  end

  def update
    task = tasks_service(id: params[:id], data: task_params).update
    task.empty? ? not_found : (response_success task: task)
  end

  def assign_student
    binding.pry
  end

  private

  # This method initialize the service
  # This service has an attribute called task_params that it will filed
  # with the params that the controller send
  def tasks_service(hash_params)
    @tasks_service ||= TasksService.new(hash_params)
  end

  def task_params
    params.require(:task).permit(:name)
  end
end
