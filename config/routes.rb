Rails.application.routes.draw do

  devise_for :users

 devise_scope :user do get '/users/sign_out' => 'devise/sessions#destroy' 
 end

get 'welcome/index' 



get "/indexadmin", to: "welcome#indexadmin"

get 'about' => 'pages#about', as: :about

get 'misavisos' => 'pages#misavisos', as: :misavisos

    get 'contact' => 'pages#contact', as: :contact

get 'posts' => 'posts#index', as: :posts

resources :publications 

put "/publications/:id/publish", to: "publications#publish"



  
  root to: 'welcome#index' 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
