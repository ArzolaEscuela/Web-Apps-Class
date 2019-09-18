Rails.application.routes.draw do
  root to:'posts#index'

  # cuando get sea ejecutado en posts con el parametro id, se mapea a posts y se ejecuta el metodo show
  get '/posts/:id', to: 'posts#show'


end
