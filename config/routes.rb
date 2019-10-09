Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end
end
