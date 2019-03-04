Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboard#index"

  resources :expenses
  namespace :charts do
    get "semester_type"
    get "type"
    get "category"
    get "accumulated"
  end
end
