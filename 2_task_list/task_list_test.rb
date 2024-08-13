require "minitest/autorun"
require "minitest/pride"
require_relative "task"
require_relative "task_list"

class TaskListTest < Minitest::Test
  def test_example
    assert TaskList.new
    assert Task.new("my task")
  end

  # TODO: add tests here
end
