Rails.application.routes.draw do



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
    resources :pictures
  end

  scope module: 'public' do
    get root to: "homes#top"
    resources :pictures, only: [:index, :show]
    resources :contacts, only: [:new,:create]
    post 'contacts/confirm', to: 'contacts#confirm'
    post 'contacts/back', to: 'contacts#back'
    get 'contacts/complete', to: 'contacts#complete'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
