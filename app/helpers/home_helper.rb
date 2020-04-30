# frozen_string_literal: true

module HomeHelper
  def path
    if Rails.env.production?
      graphql_path
    else
      '/graphiql'
    end
  end
end
