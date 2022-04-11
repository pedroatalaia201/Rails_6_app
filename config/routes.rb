Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
  get "noticias" => "news#index", as: :news
  get "noticias/:category/slug" => "news#show", as: :news_show
end
