Rails.application.routes.draw do
  get 'welcome/index'
<<<<<<< HEAD

  resources :articles

  root 'welcome#index'

  resources :articles do
  resources :comments
  end
end
=======
  resources :articles
  resources :articles do
  resources :comments
end
end




>>>>>>> 143ed3c90411b3724bdcf5848eb7e68a518a9feb
