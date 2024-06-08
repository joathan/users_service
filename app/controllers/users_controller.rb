# frozen_string_literal: true

# Path: users_service/app/controllers/users_controller.rb
class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { id: user.id, name: user.name, email: user.email }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
