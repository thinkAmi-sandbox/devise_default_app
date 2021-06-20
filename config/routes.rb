Rails.application.routes.draw do
  # ルートルーティングを先頭に置く
  # https://railsguides.jp/routing.html#root%E3%82%92%E4%BD%BF%E3%81%86
  root to: 'home#index'

  devise_for :users

  # ログインしていないと表示できないページ
  get '/private', to: 'home#show', as: 'private_page'
end
