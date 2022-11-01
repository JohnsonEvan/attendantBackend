Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users
  resources :attendants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "add", to: "attendants#create"
  # Defines the root path route ("/")
  scope '/api' do
    post 'user_token' => 'user_token#create'
    resources :users
    resources :attendates
  end
end
