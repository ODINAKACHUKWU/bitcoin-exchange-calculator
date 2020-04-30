# frozen_string_literal: true

Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  get 'home/index'
  post '/graphql', to: 'graphql#execute'
  root 'home#index'
end
