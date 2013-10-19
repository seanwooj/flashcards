Flashcards::Application.routes.draw do
  root :to => 'homes#show', via: :get
  resource :session, :only => [:new, :create, :destroy]
  resources :users, :only => [:new, :create]
  resource :preferences, :only => [:show]
  resource :dashboard, :only => [:show]
  resources :decks, :only => [:create, :show] do
    resources :cards, :only => [:create, :show, :destroy]
  end
end

