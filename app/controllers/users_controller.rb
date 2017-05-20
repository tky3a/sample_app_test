class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
end
#{"id"=>"sign_up"}