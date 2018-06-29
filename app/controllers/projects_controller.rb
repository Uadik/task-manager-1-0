class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def update
  end
  
  def create
    @todo = Todo.new(todo_params)
 
    @todo.save
    redirect_to root_path
  end
  
  private
  def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end