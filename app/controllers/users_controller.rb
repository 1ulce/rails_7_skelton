class UsersController < ApplicationController
  include Pagy::Backend

  def index
    @search = User.ransack(params[:q])
    @search.sorts = 'id desc' if @search.sorts.empty?
    @pagy, @users = pagy(@search.result)
  end
end
