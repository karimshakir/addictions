Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do

    post "/users" => "users#create"

    get "/addictions" => 'addictions#index'
    post "/addictions" => 'addictions#create'
    get "/addictions/:id" => 'addictions#show'
    # patch "/addictions/:id" => 'addictions#update'
    delete "/addictions/:id" => 'addictions#destroy'

    get "/addictions_occurences" => 'addictions_occurences#index'
    post "/addictions_occurences" => 'addictions_occurences#create'
    get "/addictions_occurences/:id" => 'addictions_occurences#show'
    # patch "/addictions_occurences/:id" => 'addictions_occurences#update'
    # delete "/addictions_occurences/:id" => 'addictions_occurences#destroy'

  end
end
