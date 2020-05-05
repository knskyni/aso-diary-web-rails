Rails.application.routes.draw do
  root "home#top"
  get '/login' => "user#login_form"
  post '/login' => "user#login"

  get '/diary/index' => "diary#index"
end
