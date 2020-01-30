Rails.application.routes.draw do
  get "/auditoriums" => "auditoriums#index"
  get "/auditoriums/:id" => "auditoriums#show"
  get "/auditoriums/:id/edit" => "auditoriums#edit"
  patch "/auditoriums/:id" => "auditoriums#update"
end
