Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"


    get "/addictions" => 'addictions#index'
    post "/addictions" => 'addictions#create'
    get "/addictions/:id" => 'addictions#show'
    patch "/addictions/:id" => 'addictions#update'
    delete "/addictions/:id" => 'addictions#destroy'

    get "/circumstances" => 'circumstances#index'
    post "/circumstances" => 'circumstances#create'
    get "/circumstances/:id" => 'circumstances#show'
    patch "/circumstances/:id" => 'circumstances#update'
    delete "/circumstances/:id" => 'circumstances#destroy'

    get "/addiction_occurrences" => 'addiction_occurrences#index'
    post "/addiction_occurrences" => 'addiction_occurrences#create'
    get "/addiction_occurrences/:id" => 'addiction_occurrences#show'
    # patch "/addiction_occurrences/:id" => 'addiction_occurrences#update'
    # delete "/addiction_occurrences/:id" => 'addiction_occurrences#destroy'
  end
end
