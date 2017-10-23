Rails.application.routes.draw do

  resources :designers do
    resources :orders do
      resources :applications, only: [:index, :show]
      resources :items, only: [:index, :create, :new, :destroy]
    end
  end

  resources :categories, except: [:destroy] do
    resources :orders do
      resources :items, only: [:index, :create, :new, :destroy]
    end
  end

  resources :producers do
    resources :applications, except: [:edit, :update]
  end

end
