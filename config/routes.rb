Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :redirect_rules, except: :show
  end
end
