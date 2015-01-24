Rails.application.routes.draw do
  resources :sops

  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :sops
    end
  end
end
