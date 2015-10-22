Rails.application.routes.draw do
  resources :authors, shallow:true do
    resources :books
  end
end
