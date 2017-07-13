Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/gates', to: 'gates#create'
  get '/gates/show', to: 'gates#show'
  post '/pay_results', to: 'pay_results#create'
  get '/pay_results/show', to: 'pay_results#show'

  namespace :koubei do
    get '/notifications/show', to: 'notifications#show'
    post '/notifications', to: 'notifications#create'

    get '/gates/show', to: 'gates#show'
    post '/gates', to: 'gates#create'
  end

end
