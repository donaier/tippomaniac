class Admin < ActiveRecord::Base
  devise :database_authenticatable, authentication_keys: [:email]
end
