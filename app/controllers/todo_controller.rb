class TodoController < ApplicationController
  def index
  	@todos = Todo.all
  end

  def update
  end

  def create
  	@todo = Todo.create(params.require(:todo).permit(:text, :project_id))
  	@todo.save
  	redirect_to("/")
  end
end
