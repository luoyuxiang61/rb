Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcon/index'

  #写上resource就会自动帮你生成这个resource的CRUD路由 (但是controller和controller里和路由对应的action需要自己写)
  resources :articles

  root 'welcome#index' #访问路由是为了产生action，这里设置访问root直接绕过welcom的路由，触发index的action

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
