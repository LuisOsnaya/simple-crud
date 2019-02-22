Rails.application.routes.draw do
  get 'assign_student/update'
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'students#index'
    resources :students, only: %i[index show create destroy update]
    resources :tasks, only: %i[index show create destroy update] do
      resources :assign_student, only: %i[update]
    end
  end
end
