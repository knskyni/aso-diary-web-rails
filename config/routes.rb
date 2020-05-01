Rails.application.routes.draw do
  get 'user/login_form'
  root "home#top"
end
