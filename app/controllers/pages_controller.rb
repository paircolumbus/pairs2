class PagesController < ApplicationController
  def index
    if signed_in?
      redirect_to current_user
    end
  end
end
