Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params_url" => "examples#query_params_action"
    get "/query_name_url" => "examples#query_name_action"
    get "/query_guess_url" => "examples#query_guess_action"
  end
end
