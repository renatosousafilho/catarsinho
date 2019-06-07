class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :show]

  def index
    @projects = current_user.projects.paginate(page: params[:page])
  end

  def new
    @project = current_user.projects.build
  end

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      flash[:success] = "Projeto criado com sucesso"
      redirect_to projects_path
    else
      flash[:error] = @project.errors.full_messages.first
      render :new
    end
  end

  def edit
  end

  def update
    @project.assign_attributes(project_params)
    if @project.save
      flash[:success] = "Projeto criado com sucesso"
      redirect_to projects_path
    else
      flash[:error] = @project.errors.full_messages.first
      render :new
    end
  end

  def show
  end


  private

  def set_project
    @project = current_user.projects.find_by_id(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :target_value, :picture)
  end
end
