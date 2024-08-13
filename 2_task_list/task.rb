class Task
  attr_reader :name, :completed

  def initialize(name)
    @name = name
    @completed = false
  end

  def complete!
    @completed = true
  end

  def uncomplete!
    @completed = false
  end
end
