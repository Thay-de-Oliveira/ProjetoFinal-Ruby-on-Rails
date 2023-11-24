Rails.application.routes.draw do
  resources :states
  resources :persons_registers
  resources :events_forms
  resources :services
  resources :cities
  get 'welcome/index'
  get "/cities", to: "cities#index"
  root to: "welcome#index"
  get "inicio", to: "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
