Rails.application.routes.draw do

  resources :designers do
    resources :orders
  end

  resources :categories do
    resources :orders
  end
end
