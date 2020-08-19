Rails.application.routes.draw do
  post 'data/save', to: 'data#save', as: 'save'  
end
