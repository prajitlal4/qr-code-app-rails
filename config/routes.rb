Rails.application.routes.draw do
  # Root Path
  root 'pages#home'

  # Devise Routes for Business and Candidate
  devise_for :business, controllers: {
    sessions: 'business/sessions'
  }

  devise_for :candidate, controllers: {
    sessions: 'candidate/sessions'
  }

  get 'candidate/dashboard', to: 'candidate#dashboard'
  get 'business/dashboard', to: 'business#dashboard'

  # Static Pages
  get 'pages/candidate'
  get 'pages/business'
  # ... other static pages ...

  # Optional: Redirects for singular/plural paths if needed
  get 'candidates/*path', to: redirect('/candidate/%{path}')
  get 'businesses/*path', to: redirect('/business/%{path}')
end
