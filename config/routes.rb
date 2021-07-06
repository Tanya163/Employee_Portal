Rails.application.routes.draw do
  devise_for :employees, controllers: {
    :sessions => "employees/sessions",
    :registrations => "employees/registrations" }
  root to: "pages#index"
  get '/contact', to: 'pages#contact'
end
