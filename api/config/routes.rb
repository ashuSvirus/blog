Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    post '/login' => 'sessions#create'
    delete '/logout' => 'sessions#destroy'

    get 'posts/list' => 'posts#list'
    resources :users, :posts
  end

end
