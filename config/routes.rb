Rails.application.routes.draw do
  root "pages#home"
  get "/cabs",     to: "pages#cabs",     as: :cabs
  get "/cabs/:id", to: "pages#show_cab", as: :cab
end
