Rails.application.routes.draw do
  devise_for :employees
  root to: "pages#index"
end
