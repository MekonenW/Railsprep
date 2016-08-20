Rails.application.routes.draw do
  root 'lenders#index'

  get 'lenders' => 'lenders#show'


  post 'lenders' => 'lenders#create'

  get 'lenders/:id' => 'lenders#show'


  get 'sessions' => 'sessions#new'

  post 'sessions' => 'sessions#create'

  delete 'sessions' => 'sessions#destroy'

  post 'borrowers' => 'borrowers#create'

  get 'borrowers/:id' => 'borrowers#show'

  patch 'borrowers/:id' => 'borrowers#update'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
