class ProjectsController < ApplicationController
  before_action :set_project, except: %i[ index new create ]

  def index
    @projects = Current.user.projects.all
  end

  def new
    @project = Current.account.projects.build
  end

  def create
    @project = Current.account.projects.create!(project_params)
    redirect_to @project
  end

  def show
  end

  def edit
  end

  def update
    @project.update!(project_params)
    redirect_to @project
  end

  def destroy
    @project.destroy
    redirect_to projects_url
  end

  private
    def set_project
      @project = Current.user.projects.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name)
    end
end
