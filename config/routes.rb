Rails.application.routes.draw do
  devise_for :employees
  root to: "pages#index"
  get '/contact', to: 'pages#contact'
end
