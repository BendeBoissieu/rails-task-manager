class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

   def show
    @task = Task.find(params[:id])
  end

  def create

    title=params[:task][:title]
    details=params[:task][:details]

    @task = Task.new(title: title, details: details)
    @task.save
    # redirect_to prefix_path(things that you need)
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end



  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])


    @task.update(task_params)

    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
