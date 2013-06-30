Languagelearningexperiment::Application.routes.draw do

  # match 'iterative_chains/start' => 'iterative_chains#start', :as => 'start'
  # match 'user_entries/training' => 'user_entries#training', :as => 'training'
  
  match 'start' => 'user_entries#start', :as => 'start'
  
  resources :iterative_chains do
    get ':controller(/:action(/:id))'
    resources :user_entries
  end
  
  # get ':controller(/:action(/:id))'
  
  root :to => 'iterative_chains#index'

end
