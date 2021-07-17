class HomeController < ApplicationController

  def index
    if params[:sort_by] == "category_name"
      @projects = Project.joins(:user, :category).order("categories.name ASC")
    elsif params[:sort_by] == "user_name"
      @projects = Project.joins(:user, :category).order("users.user_name ASC")
    elsif params[:sort_by] == "project_title"
      @projects = Project.joins(:user, :category).order("title ASC")
    else
      @projects = Project.joins(:user, :category).order('created_at DESC')
    end

    respond_to do |format|
      format.js {render 'index.js.erb', layout: false}
      format.html  # new.html.erb
    end
  end
end
