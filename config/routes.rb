Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'students#index'
    resources :students, only: %i[index show create destroy update]
  end
end
