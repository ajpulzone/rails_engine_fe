Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/merchants", to: "merchants#index"
  get "/merchants/:merchant_id", to: "merchants#show"

  get "/items", to: "items#index"
  get "/items/:item_id", to: "items#show"
end
