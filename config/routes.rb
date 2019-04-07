Rails.application.routes.draw do
  scope "lab", controller: "lab" do
    get "delay(/:seconds)", action: "delay"
    get "env"
  end

  resources :users

  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
