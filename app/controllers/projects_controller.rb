class ProjectsController < ApplicationController  
  def index
    @projects = Project.all
  end
  
  def update
    @todo = Todo.find(params[:id])
    @todo.update(is_completed: !@todo.is_completed)
    redirect_to root_path
  end
  
  def create
    @todo = Todo.new(todo_params)

    @todo.save
    redirect_to root_path
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to root_path
  end

  private
  def todo_params
    params.require(:todo).permit(:text, :project_id)
  end
end