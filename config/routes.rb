Rails.application.routes.draw do
  get 'welcome/index'
  
  resources:leads

  root 'welcome#index'
end
