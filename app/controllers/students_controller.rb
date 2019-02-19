class StudentsController < ApplicationController
  def index
    response_success students: students_service({}).show_all
  end

  private

  # This method initialize the service
  # This service has an attribute called params that it will filed with the
  # params that the controller send
  def students_service(hash_params)
    @students_service ||= StudentsService.new(hash_params)
  end
end
