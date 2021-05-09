class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include Rails.application.routes.url_helpers
  default_url_options[:host] = 'localhost:3000'
end
