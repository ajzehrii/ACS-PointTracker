Rails.application.routes.draw do
  get"home", to: "pages#home"
  get"about", to: "pages#about"
  get"officer-team", to: "pages#officer-team"
  get"general-meetings", to: "pages#general-meetings"
  get"admin", to: "pages#admin"

  resources :members
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
