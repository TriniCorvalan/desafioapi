Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :ufs, only: [] do
        collection do
          get 'by_date/:date', to: 'ufs#by_date'
        end
      end
      resources :clients, only: [] do
        collection do
          get ':name', to: 'clients#by_name'
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
