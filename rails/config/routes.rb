Rails.application.routes.draw do
  root "home#home"
  resources :home
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
