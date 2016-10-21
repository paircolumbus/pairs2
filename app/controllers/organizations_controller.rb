class OrganizationsController < ApplicationController
  respond_to :html

  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
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
        params.require(:organization).permit(:name, :description, :admin_id)
      end
end
