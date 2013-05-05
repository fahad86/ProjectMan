ProjectMan::Application.routes.draw do
  resources :projects do
    member do
      get :gitlog
    end
  end
  root to: "projects#index"
end
