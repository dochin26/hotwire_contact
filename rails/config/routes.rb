Rails.application.routes.draw do
  get "sessions/new"
  root "home#home"
  resources :users
  get "/home/home", to: "home#home"
  get "/home/list", to: "home#list"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
