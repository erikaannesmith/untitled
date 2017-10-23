Rails.application.routes.draw do

  resources :designers do
    resources :invoices, only: [:index, :show, :edit, :update]
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
    resources :invoices, only: [:index, :show, :edit, :update]    
    resources :applications, except: [:edit, :update]
  end
  
  #orders become legitimate when submitted, but must be approved by admin
  #applications become legitimate when submitted, only approved by designer, default status = pending 
  resources :invoices
end
