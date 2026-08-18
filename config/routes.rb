Rails.application.routes.draw do
  get "message/create"
  
  
  
  root 'pages#home'

  get '/dashboard', to: 'users#dashboard'
  post '/users/edit', to: 'users#update'
  get '/users/:id', to: 'users#show', as: 'users' 

  get '/selling_orders', to: 'orders#selling_orders'
  get '/buying_orders', to: 'orders#buying_orders'
  
  get '/all_requests', to: 'requests#list'
  get '/request_offers/:id', to: 'requests#offers', as: 'request_offers'
  get '/my_offers', to: 'requests#my_offers'

  put '/orders/:id/complete', to: 'orders#complete', as: 'complete_order'
  get '/orders/:id', to: 'orders#show', as: 'order_detail'

  put '/offers/:id/accept', to: 'offers#accept', as: 'accept_offer'
  put '/offers/:id/reject', to: 'offers#reject', as: 'reject_offer'
  post '/offers', to: 'offers#create'
  post '/reviews', to: 'reviews#create'

  get '/search', to: 'pages#search'

  post '/users/edit_phone', to: 'users#callback_phone'

  get '/settings/payment', to: 'users#payment', as: 'settings_payment'
  post '/settings/payment', to: 'users#update_payment', as: "update_payment"
  get '/settings/payout', to: 'users#payout', as: "settings_payout"
  post '/settings/payout', to: 'users#update_payout', as: "update_payout"


  get '/gigs/:id/checkout/:pricing_type', to: 'gigs#checkout', as: 'checkout'

  get '/earnings', to: 'users#earnings', as: 'earnings'

  post '/users/withdraw', to: 'users#withdraw', as: 'withdraw'
  post 'messages', to: 'messages#create'

  get '/conversations', to: 'conversations#list', as: "conversations"
  get '/conversations/:id', to: 'conversations#show', as: "conversation_detail"

  post '/comments', to: 'comments#create'

  get '/calendar', to: 'pages#calendar'

  get '/plans', to: 'pages#plans'

  post '/subscribe', to: 'subscriptions#subscribe'
  post '/webhook', to: 'subscriptions#webhook'

  delete '/users/remove_subscription', to: 'users#remove_subscription', as: 'remove_subscription'


  mount ActionCable.server => '/cable'


  resources :gigs do
    member do
      delete :delete_photo
      post :upload_photo
    end
  resources :orders, only: [:create]
  end
  
  resources :requests

  #resources :gigs
  # devise_for :users

  # get "pages/home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  devise_for :users,
              path: '',
              path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}


end
