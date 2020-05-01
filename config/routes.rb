# frozen_string_literal: true

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
  get '/developer', to: 'home#developer', as: 'developer'
  post '/graphql', to: 'graphql#execute'
  root 'home#index'
end
