class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(todo_params)
        @todo.save

        redirect_to "/"
    end

    def todo_params
        params.require(:todo).permit(:title)
    end
end