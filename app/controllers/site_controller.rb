class SiteController < ApplicationController
  def index
    @projects = Project.active.paginate(page: params[:page])
  end
end
