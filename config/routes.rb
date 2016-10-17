Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  root 'tweets#index'
  get 'tweets/timeline' => 'tweets#timeline'
  get 'users/messages' => 'messages#index'
  post 'users/messages' => 'messages#create'


  resources :tweets do
    resources :comments, only: [:create]

    collection do
      get 'search'
    end

  end

#resources :users, only: [:show, :edit, :update]

#resources :messages, only: [:index, :create]



  resources :users do
    resources :messages, only: [:index, :create]
   end

end



  # get 'tweets' => 'tweets#index'
  # get 'tweets/new' => 'tweets#new'
  # post  'tweets'  => 'tweets#create'
  # delete 'tweets/:id' => 'tweets#destroy'
  # patch 'tweets/:id' => 'tweets#update'
  # get 'tweets/:id/edit' => 'tweets#edit'
  # get 'users/:id' => 'users#show'
  # get 'tweets/:id' => 'tweets#show'
