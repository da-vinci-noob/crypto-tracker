Rails
  .application
  .routes
  .draw do
    get 'vue/index'
    root 'vue#index'

    get 'home/index'

    namespace :api, defaults: { format: :json } do
      namespace :v1 do
        controller :binance do
          get 'balance'
        end
      end
    end

    get '/*path',
        to: 'vue#index',
        constraints: ->(req) { !(req.fullpath =~ %r{^\/assets\/.*}) }

    # root 'home#index'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
