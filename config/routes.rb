Rails.application.routes.draw do
  root to: 'catalogues#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :catalogues do
  resources :voitures , only: [:new, :index, :create, :edit, :update]
end

end
