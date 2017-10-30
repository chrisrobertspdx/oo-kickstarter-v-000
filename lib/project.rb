class Project
  attr_accessor :name, :backers
  def initialize(name)
    @name = name
    @backers = []
  end
end
