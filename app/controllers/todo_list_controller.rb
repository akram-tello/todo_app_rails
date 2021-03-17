class TodoController < ApplicationController
  before_action :set_todo_list, only: [:show, :edit ]

  def index
    @todo_lists = TodoList.all
  end

  def show
  end

  def new
    @todo_list = TodoList.new
  end

  def edit
  end

  def create
    @todo_list = TodoList.new(todo_list_params)

    respond_to do |format|
      if @todo_list.save
        format.html { redirect_to @todo_list, notice: 'Todo list was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end



  private
    def set_todo_list
      @todo_list = TodoList.find(params[:id])
    end

end
