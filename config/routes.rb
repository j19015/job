Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  post "/companies/search"=>"companies#search",as: "company_search"
  get "/about"=>"home#about",as: "home_about"
  resources :companies do
    resources :company_infos
  end
  #post "/companies/:id"=>"company_infos#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end