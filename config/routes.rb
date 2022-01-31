Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  post "/companies/search"=>"companies#search",as: "company_search"
  get "/about"=>"home#about",as: "home_about"
  get "users/edit"=>"device/registration#edit", as: "edit_mypage"
  get "home/table"=>"home#table", as: "show_company"

  resources :companies do
    resources :company_infos
  end
  
  resources :mypages do
  end
  #post "/companies/:id"=>"company_infos#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end