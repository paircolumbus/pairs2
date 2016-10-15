class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

   private

   def organization_params
   end
end
