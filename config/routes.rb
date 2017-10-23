Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :computers
  resources :customers
  resources :departments
  resources :employee_computers
  resources :employees
  resources :issuing_banks
  resources :orders
  resources :payment_types
  resources :product_types
  resources :products
  resources :training_programs

end
