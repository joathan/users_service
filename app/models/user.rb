# frozen_string_literal: true

# Path: users_service/app/models/user.rb
class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
