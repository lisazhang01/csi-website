Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#index'

  namespace :api do
    resources :clients
     #     api_clients GET    /api/clients(.:format)           api/clients#index
     #                 POST   /api/clients(.:format)           api/clients#create
     #  new_api_client GET    /api/clients/new(.:format)       api/clients#new
     # edit_api_client GET    /api/clients/:id/edit(.:format)  api/clients#edit
     #      api_client GET    /api/clients/:id(.:format)       api/clients#show
     #                 PATCH  /api/clients/:id(.:format)       api/clients#update
     #                 PUT    /api/clients/:id(.:format)       api/clients#update
     #                 DELETE /api/clients/:id(.:format)       api/clients#destroy
    resources :students
     #     api_students GET    /api/students(.:format)          api/students#index
     #                  POST   /api/students(.:format)          api/students#create
     #  new_api_student GET    /api/students/new(.:format)      api/students#new
     # edit_api_student GET    /api/students/:id/edit(.:format) api/students#edit
     #      api_student GET    /api/students/:id(.:format)      api/students#show
     #                  PATCH  /api/students/:id(.:format)      api/students#update
     #                  PUT    /api/students/:id(.:format)      api/students#update
     #                  DELETE /api/students/:id(.:format)      api/students#destroy
    resources :courses
  end

  resources :static_pages, only: [:index]
  # static_pages GET    /static_pages(.:format)          static_pages#index
  resources :courses, only: [:index]


end
