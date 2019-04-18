Rails.application.routes.draw do
<<<<<<< a4e205a96aa95a6f4620ac5f2fc9dbb3fff7b05f
<<<<<<< c27577868aee6328204ef775ae6889d26dc87faa
  get 'users/new'
  scope"(:locale)", locale:/en|vi/ do
=======
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
>>>>>>> Chapter 8 by Thiet Nguyen
=======
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
>>>>>>> Chapter 8 by Thiet Nguyen
    resource :static_pages
    resource :users
    root "static_pages#home"
    get  "/help", to: "static_pages#help"
    get  "/about", to: "static_pages#about"
    get  "/contact", to: "static_pages#contact"
    get  "/signup", to: "users#new"
    post "/signup", to: "users#create"
    get "/login", to: "sessions#new"
    post "/login", to:"sessions#create"
    delete "logout", to: "sessions#destroy"
  end
end