Rails.application.routes.draw do
  root 'welcome#index'

  devise_for :users, :controllers => { :registrations => 'registrations' }

  devise_scope :user do
    get 'logout', to: 'devise/sessions#destroy'
  end
end
