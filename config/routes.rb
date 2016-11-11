Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "welcome/home"
  root :to => "welcome#home"

  Velas::Application.routes.draw do
  resources :candles
  root 'welcome#index'
end
  
end
