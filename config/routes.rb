Rails.application.routes.draw do

  namespace :public do
    get 'homes/top'
  end
  # 顧客用
# URL /customers/sign_in ...
devise_for :customers, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions',
  passwords: 'public/passwords'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  namespace :admin do

  end


  scope module: 'public' do
    get root to: "homes#top"
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
