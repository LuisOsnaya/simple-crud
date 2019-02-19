class StudentsController < ApplicationController
  def index
    response_success students: students_service({}).show_all
  end

  def show
    student = students_service(id: params[:id]).show
    student.empty? ? not_found : (response_success student: student)
  end

  def create
    student = students_service(params: student_params).create
    student.save ? (response_created student: student) : response_error
  end

  def destroy
    students_service(id: params[:id]).destroy
    response_success
  end

  def update
    student = students_service(id: params[:id], data: student_params).update
    student.empty? ? not_found : (response_success student: student)
  end

  private

  # This method initialize the service
  # This service has an attribute called student_params that it will filed
  # with the params that the controller send
  def students_service(hash_params)
    @students_service ||= StudentsService.new(hash_params)
  end

  def student_params
    params.require(:student).permit(
      :name,
      :first_last_name,
      :second_last_name,
      :status
    )
  end
end
