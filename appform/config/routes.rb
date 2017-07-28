Rails.application.routes.draw do
 get 'welcome/index'
 resources :webforms
  root 'welcome#index'
end
