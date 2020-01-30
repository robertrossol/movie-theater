Rails.application.routes.draw do
  get "/auditoriums" => "auditoriums#index"
  get "/auditoriums/new" => "auditoriums#new"
  post "auditoriums" => "auditoriums#create"
  get "/auditoriums/:id" => "auditoriums#show"
  get "/auditoriums/:id/edit" => "auditoriums#edit"
  patch "/auditoriums/:id" => "auditoriums#update"
  delete "/auditoriums/:id" => "auditoriums#destroy"
end
