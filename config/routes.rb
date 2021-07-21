Rails.application.routes.draw do
  devise_for :employees, controllers: {
    :sessions => "employees/sessions",
    :passwords => "employees/passwords",
    :registrations => "employees/registrations" } 
  root to: "pages#index"
  get '/contact', to: 'pages#contact'
  resources :employee
end
