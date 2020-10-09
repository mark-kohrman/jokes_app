Rails.application.routes.draw do

  namespace :api do
    get "/jokes" => "jokes#index"    
    get "/jokes/:id" => "jokes#show"


  end

  root 'application#index'
  get '/*path', to: 'application#index'
end
