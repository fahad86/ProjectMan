ProjectMan::Application.routes.draw do
  resources :projects, except: :index
  root to: "projects#index"
end
