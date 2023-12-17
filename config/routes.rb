Rails.application.routes.draw do
  devise_for :business, controllers: {
    sessions: 'business/sessions'
  }

  devise_for :candidate, controllers: {
    sessions: 'candidate/sessions'
  }

  root 'pages#home'
  get 'pages/candidate'
  get 'pages/business'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
