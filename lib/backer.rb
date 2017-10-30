class Backer
  attr_accessor :name, :backed_projects

  @@backers = []

  def initialize(name)
    @name = name
    @backed_projects = []
    self.save
  end

  def save
    @@backers << self
  end
  
  def back_project(name)

  end
  
end
