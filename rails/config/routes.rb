Rails.application.routes.draw do
  root    "home#home"
  get     "/home/home",   to: "home#home"
  get     "/home/list",   to: "home#list"
  get     "/signup", to: "users#new"
  get     "/login",       to: "sessions#new"
  post    "/login",       to: "sessions#create"
  delete  "/logout",      to: "sessions#destroy"

  resources :users

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
