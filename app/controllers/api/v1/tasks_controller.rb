class Api::V1::TasksController < ApplicationController
  def index
    tasks = Task.order("created_at DESC")
    render json: tasks
  end

  def create
    task = Task.create(task_params)
    render json: task
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    head :no_content, status: :ok
  end

  private

  def task_params
    params.require(:task).permit(:title, :body)
  end
end
