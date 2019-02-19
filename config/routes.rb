Rails.application.routes.draw do
  get 'students/index'
  root 'students#index'
end
