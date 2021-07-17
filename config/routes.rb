Rails.application.routes.draw do
  devise_for :employees, controllers: {
    :sessions => "employees/sessions",
    :registrations => "employees/registrations",
    :passwords => "employees/passwords" } 
  root to: "pages#index"
  get '/contact', to: 'pages#contact'
  resources :employee
end
