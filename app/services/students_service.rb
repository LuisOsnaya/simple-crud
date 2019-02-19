# frozen_string_literal: true

class StudentsService
  def initialize(params = {})
    @params = params
  end

  def show_all
    retrieve_students({})
  end
  #
  # def show
  #   retrieve_students(
  #     status: @params[:status],
  #     id: @params[:advertisement_id]
  #   )
  # end
  #
  private

  # Retrieve al the advertisement by user
  def retrieve_students(params)

    Student.where(params)
  end
end
