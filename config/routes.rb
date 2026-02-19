Rails.application.routes.draw do
  root "pages#home"
  get  "/cabs",        to: "pages#cabs",     as: :cabs
  get  "/cabs/:id",   to: "pages#show_cab", as: :cab

  get    "/cart",        to: "cart#show",   as: :cart
  post   "/cart/add",    to: "cart#add",    as: :cart_add
  delete "/cart/remove", to: "cart#remove", as: :cart_remove
end
