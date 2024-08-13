class TaskList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task(task_name)
    @tasks.reject! { |task| task.name == task_name }
  end

  def completed_tasks
    @tasks.select { |task| task.completed }
  end

  def incomplete_tasks
    @tasks.reject { |task| task.completed }
  end

  def all_tasks
    @tasks
  end
end
