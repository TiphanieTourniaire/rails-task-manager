Rails.application.routes.draw do

  resources :tasks

put 'tasks/:id/done', to: "tasks#done", as: "done_task"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
