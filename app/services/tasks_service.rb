# frozen_string_literal: true

class TasksService
  def initialize(params = {})
    @params = params
  end

  def show_all
    retrieve_tasks({})
  end

  def show
    retrieve_tasks(id: @params[:id])
  end

  def create
    Task.new(@params[:params])
  end

  def destroy
    task = retrieve_tasks(id: @params[:id])
    task.first.destroy
  end

  def update
    task = retrieve_tasks(id: @params[:id])
    task.update(@params[:data])
  end

  private

  # Retrieve al the advertisement by user
  def retrieve_tasks(params)
    Task.where(params)
  end
end
