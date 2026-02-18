Rails.application.routes.draw do
  root "pages#home"
  get "/cabs", to: "pages#cabs", as: :cabs
end
