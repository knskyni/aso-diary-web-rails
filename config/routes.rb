Rails.application.routes.draw do
  get '/login' => "user#login_form"
  root "home#top"
end
