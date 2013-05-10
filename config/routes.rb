ProjectMan::Application.routes.draw do
  resources :projects do
    member do
      get :gitlog
    end
    resources :builds
  end
  root to: "projects#index"
end
