  Rails.application.routes.draw do
  devise_for :users
    get   'tweets'      =>  'tweets#index'     #ツイート一覧画面
    get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
    post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
    root  'tweets#index'
    delete 'tweets/:id' => 'tweets#destroy'
    patch  'tweets/:id' => 'tweets#update'
    get   'tweets/:id/edit' => 'tweets#edit'
    get   'users/:id'   =>  'users#show'
  end