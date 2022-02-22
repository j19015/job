Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'home#top'
  get "/home/table"=>"home#table",as: "show_company"
  get "/home/day_sort"=>"home#day_sort",as: "day_sort_company"
  post "/companies/search"=>"companies#search",as: "company_search"
  get "/companies/search"=>"companies#search",as: "company_search_get"
  get "/about"=>"home#about",as: "home_about"
  get "/manual"=>"home#manual",as: "home_manual"
  get "/rally"=>"events#rally",as: "event_rally"
  
  post "/events"=>"events#create",as: "events_post"
  get "/events"=>"events#event_post",as: "events"
  
  resources :events do
  end
  

  resources :questions,except: [:show]
  get "/questions/:kind"=>"questions#search_index",as:"search_index"
  resources :companies do
    resources :company_infos
  end
  resources :mypages do
  end
  get "*path"=>"home#notfound",as:"not_found"
  #post "/companies/:id"=>"company_infos#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end