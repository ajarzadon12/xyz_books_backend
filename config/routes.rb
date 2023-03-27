Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get "/books/:id", to: "books#search"
      get "/books/convert_isbn13/:id", to: "books#convert_isbn13"
    end
  end
end
