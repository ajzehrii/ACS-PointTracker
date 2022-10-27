Rails.application.routes.draw do
  devise_for :members, controllers: {
    omniauth_callbacks: 'members/omniauth_callbacks',
    sessions: 'members/sessions',
    registrations: 'members/registrations'
  }
  get"home", to: "pages#home"
  get"about", to: "pages#about"
  get"officer-team", to: "pages#officer-team"
  get"general-meetings", to: "pages#general-meetings"
  get"admin", to: "pages#admin"
  get"login", to: "login#index"

  resources :members
  resources :acs_admins
  resources :dues
  resources :attendances
  resources :meetings
  resources :emails do
    collection do
      get '/subscribe', :to => "emails#subscribe", :as => 'subscribe'
    end
  end
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
