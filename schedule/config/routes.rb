Rails.application.routes.draw do
  get 'contact/index'
  get 'contact/show'
  post 'contact/create'
  get 'contact/new'
  get 'contact/edit'
  put 'contact/update'
  delete 'contact/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
