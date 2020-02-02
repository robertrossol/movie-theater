Rails.application.routes.draw do
  get "/" => "auditoriums#index"
  get "/auditoriums" => "auditoriums#index"
  get "/auditoriums/new" => "auditoriums#new"
  post "auditoriums" => "auditoriums#create"
  get "/auditoriums/:id" => "auditoriums#show"
  get "/auditoriums/:id/edit" => "auditoriums#edit"
  patch "/auditoriums/:id" => "auditoriums#update"
  delete "/auditoriums/:id" => "auditoriums#destroy"

  get "/films" => "films#index"
  get "/films/new" => "films#new"
  post "films" => "films#create"
  delete "films/:id" => "films#destroy"

  get "/showings/new" => "showings#new"
  post "/showings" => "showings#create"
  get "auditoriums/:auditorium_id/showing/new" => "showings#new"
  delete "/showings/:id" => "showings#destroy"

  get "/orders" => "orders#index"
  get "/orders/new" => "orders#new"
  post "/orders" => "orders#create"
  get "showings/:showing_id/orders/new" => "orders#new"
  # delete "/orders/:id" => "orders#destroy"

  resources :auditoriums do
    resources :showing
  end

  resources :showings do
    resources :orders
  end
end
