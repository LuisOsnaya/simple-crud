# frozen_string_literal: true

class StudentsService
  def initialize(params = {})
    @params = params
  end

  def show_all
    retrieve_students({})
  end

  def show
    retrieve_students(id: @params[:id])
  end

  def create
    Student.new(@params[:params])
  end

  def destroy
    student = retrieve_students(id: @params[:id])
    student.first.destroy
  end

  def update
    student = retrieve_students(id: @params[:id])
    student.update(@params[:data])
  end

  private

  # Retrieve al the advertisement by user
  def retrieve_students(params)
    Student.where(params)
  end
end
