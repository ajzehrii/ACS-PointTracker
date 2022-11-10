Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :users
  resources :member_meetings
  resources :calendarevents
  get"home", to: "pages#home"
  get"about", to: "pages#about"
  get"officer-team", to: "pages#officer-team"
  get"general-meetings", to: "pages#general-meetings"
  get"outreach", to: "pages#outreach"
  get"social-events", to: "pages#social-events"
  get"career-development", to: "pages#career-development"

  get"portal", to: "memberportal#member"
  post"portal", to: "attendances#create"
  get"member/calendar", to: "calendarevents#member"
  get"member/meetings", to: "meetings#member"
  get"member/points", to: "points#member"

  get"admin", to: "adminportal#admin"
  get"admin/emails", to: "emails#admin"
  get"admin/meetings", to: "meetings#admin"
  get"admin/members", to: "members#admin"
  get"admin/admins", to: "acs_admins#admin"
  get"admin/calendar", to: "calendarevents#admin"
  get"admin/dues", to: "dues#admin"
  post"admin/dues", to: "dues#create"
  post"meetings/:id", to: "attendances#create"

  get"m/profile", to: "users#profile"
  get"m/attendance", to: "meetings#m"
  post"m/attendance", to: "attendances#create"

  resources :dues do
    collection do
      get 'remove_all'
    end
  end


  devise_scope :user do
    get "login" => "devise/sessions#new"
    get "signup" => "devise/registrations#new"
    get "logout" => "devise/sessions#destroy"
  end

  

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
