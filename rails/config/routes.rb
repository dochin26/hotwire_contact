Rails.application.routes.draw do
  devise_for :users
  resources  :home
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  # rootをログイン画面に設定
  devise_scope :user do
    root "users/sessions#new"
  end

  # mount_devise_token_auth_for "User", at: "auth"
end
