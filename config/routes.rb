Rails.application.routes.draw do
  get 'ask', to: 'questions#ask'
  get 'answer', to: 'questions#answer'
  get "up" => "rails/health#show", as: :rails_health_check
end
