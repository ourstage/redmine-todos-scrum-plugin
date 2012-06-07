Redmine::Application.routes.draw do
  resources :todos do
    collection do
  post :sort
  end
    member do
  post :toggle_complete
  end
  
  end

  resources :todos do
    collection do
  post :sort
  end
    member do
  post :toggle_complete
  end
  
  end

  match 'my/todos' => 'mytodos#index', :as => :my_todos
  match 'projects/:project_id/todos/show/:id' => 'todos#show'
end