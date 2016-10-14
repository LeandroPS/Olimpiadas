Rails.application.routes.draw do
  get 'pagina/home'
	root 'pagina#home'

  resources :atletas
  resources :modalidades
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
