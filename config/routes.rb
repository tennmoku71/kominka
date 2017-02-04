Rails.application.routes.draw do
  devise_for :inns, controllers: {
  sessions:      'inns/sessions',
  passwords:     'inns/passwords',
  registrations: 'inns/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
