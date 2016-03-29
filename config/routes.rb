Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  
  # Landing page route
  root 'static_pages#index'

  #facebook login
  get 'auth/:provider/callback' => 'sessions#create'
  get 'auth/failure' => redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
  #user_panel
  get 'dashboard' => 'user_panel#dashboard'

  get 'user_stories' => 'user_panel#user_stories'
  get 'post' => 'user_panel#tweet'
  get 'stories' => 'user_panel#stories'
  get 'tweet' => 'user_panel#post_to_twitter'
  get 'settings' => 'user_panel#settings'
  get 'referrals' => 'user_panel#referrals'
  get 'transactions' => 'user_panel#wallet'

  #store facebook post id
  post 'user_stories/addStory_id' => 'user_panel#add_fbStory_id'
  get 'bitly' => 'user_panel#bitly'
end
