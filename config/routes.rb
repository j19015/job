Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get "/home/table"=>"home#table",as: "show_company"
  post "/companies/search"=>"companies#search",as: "company_search"
  get "/companies/search"=>"companies#search",as: "company_search_get"
  get "/about"=>"home#about",as: "home_about"
  get "/manual"=>"home#manual",as: "home_manual"
  get "/rally"=>"event#rally",as: "event_rally"
  
  post "/event"=>"event#create",as: "event_post"
  get "/event"=>"event#event_post",as: "events"
  
  resources :events do
  end
  
  resources :companies do
    resources :company_infos
  end
  resources :mypages do
  end
  #post "/companies/:id"=>"company_infos#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end