Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # return an HTML form for creating a new article/blog post
  get 'articles/new',
  to: 'articles#new', #controller_name#action
  as: :new_article

  # display a specific article
  get 'articles/:id',
  to: 'articles#show',
  as: :article

  # 	create a new article
  post 'articles',
  to: 'articles#create',
  as: :articles


  # Defines the root path route ("/")
  # root "posts#index"
  root "articles#index"
end
