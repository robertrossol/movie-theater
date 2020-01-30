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
end
