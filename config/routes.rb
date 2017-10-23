Rails.application.routes.draw do

  resources :designers do
    resources :orders do
      resources :applications
      resources :items
    end
  end

  resources :categories do
    resources :orders do
      resources :items
    end
  end

  resources :producers do
    resources :applications
  end

end
