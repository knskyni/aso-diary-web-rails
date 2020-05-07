Rails.application.routes.draw do
  root "home#top"
  get '/login' => "user#login_form"
  post '/login' => "user#login"
  delete '/logout' => "user#logout"

  get '/diary/index' => "diary#index"
  get '/diary/new' => "diary#new"
  post '/diary/confirm' => "diary#new_confirm"
  post '/diary/create' => "diary#create"
end
