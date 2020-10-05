Rails.application.routes.draw do

  namespace :api do
    get "/jokes" => "jokes#index"
  end
end
