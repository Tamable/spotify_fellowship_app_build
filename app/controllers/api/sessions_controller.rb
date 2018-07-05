class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      params[:user][:name],
      params[:user][:password]
    )

    if @user
      login(@user)
# debugger
      render 'api/users/show'
    else
      render json: ['Invalid credentials'], status: 422
    end
  end

  def destroy
# debugger
    if @current_user
      logout
      render "api/users/show"
    else
      render json: ["Nobody signed in"], status: 404
    end
  end
end
