Rails.application.routes.draw do
  root 'application#index'
  get '/birds' => 'birds#index'
end
