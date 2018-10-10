class Api::UsersController < ApplicationController
  def create
      render json: {message: 'User created successfully'}, status: :created
  end
end
