# frozen_string_literal: true

module HomeHelper
  # Return link path
  def path
    if Rails.env.production?
      developer_path
    else
      graphiql_path
    end
  end

  # Verify that the active page is developer page
  def developer_path?
    url_for.include?('developer')
  end
end
