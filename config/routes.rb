Rails.application.routes.draw do
  devise_for :users
  get 'company_links/create'
  root to: "home#index"

  resources :companies do
    resources :payslips, except: %i[update destroy]
    patch '/payslips/:id', to: 'payslips#update', as: :payslip_update
    delete '/payslips/:id', to: 'payslips#destroy', as: :payslip_destroy
    resources :company_links, only: [:create]
    resources :employees, except: [:index]
    resources :performances, except: %i[index new show]
  end

  resources :job_profiles
  resources :contributions

  get 'favicon.ico', to: 'application#favicon'
end
