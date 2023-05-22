Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # http://localhost:3000 /
  # VERB + 'relative_path', to: 'controller_name#action_name'
  # get '/', to: 'pages#home'
  root 'pages#home'
  get '/about', to: 'pages#about', as: 'about'
  get '/contact_us', to: 'pages#contact_us', as: :contact_us
end
