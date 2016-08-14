class PagesController < ApplicationController
  def sign_up
    @user = User.new
  end

  def home
  end
end
