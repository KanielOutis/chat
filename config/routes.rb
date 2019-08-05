Rails.application.routes.draw do
  post 'dialogs/create' => 'dialogs#create'
  get 'dialogs/show' => 'dialogs#show'
  post "dialogs/:id" => 'messeges#create'
  get 'messeges/new'
  post 'messeges/create' => 'messeges#create'
  get 'messeges/destroy'
  root 'users#index'
  resources :dialogs
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
