Rails.application.routes.draw do

    
    resources :items do
        get :upvote, on: :member
        get :expensive, on: :collection
    end    
    
    root to: 'items#index'
    
    
    
      
  #  get   ':controller(/:action(/:id))(.:format)'  
    
  #  match ':controller(/:action(/:id))(.:format)'    
end
