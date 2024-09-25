Rails.application.routes.draw do
  resources :home
  resources :user
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
