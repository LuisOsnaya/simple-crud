class ApplicationController < ActionController::API
  # This method responds with a success message.
  def response_success(data = {})
    if data.keys.any?
      render status: 200, json: data
    else
      render status: 204, json: {}
    end
  end

  # This method is used when we successfully create a resource
  def response_created(data = {})
    render status: 201, json: data
  end

  # This method returns a 404 error message if the objet is not found.
  def not_found
    response_error(code: 404, message: "Objeto no encontrado.")
  end

  # This method response with a error message.
  def response_error(args = {})
    opts = { code: 422 }.merge(args)
    opts[:message] ||= "la petición es correcta pero tiene algún error semántico."
    render status: opts[:code], json: {
      code: opts[:code],
      error: opts[:message]
    }
  end
end
