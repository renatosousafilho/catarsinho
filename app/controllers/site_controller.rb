class SiteController < ApplicationController
  def index
    @projects = Project.paginate(page: params[:page])
  end
end
