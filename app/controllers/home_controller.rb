class HomeController < ApplicationController

  def index
    if params[:sort_by] == "category_name"
      @projects = Project.joins(:user, :category).order("categories.name ASC").limit(2)
    elsif params[:sort_by] == "user_name"
      @projects = Project.joins(:user, :category).order("users.user_name ASC").limit(2)
    elsif params[:sort_by] == "project_title"
      @projects = Project.joins(:user, :category).order("title ASC").limit(2)
    else
      @projects = Project.joins(:user, :category).order('created_at DESC').limit(6)
    end
  end
end
