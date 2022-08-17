Rails.application.routes.draw do
  get 'home/index'
  get 'mails/index'
  get 'mails/send_mail'
  
  resources :home, only:[:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
