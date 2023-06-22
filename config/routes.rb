Rails.application.routes.draw do
  resources :locations
  get "/locations" => "locations#index"
end
