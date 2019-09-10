Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :consults do
          resources :images do
            resources :censors
          end
        end
      end
    end
  end
end
