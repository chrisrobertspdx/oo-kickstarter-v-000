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
    proj = Project.find_or_create_by_name(name)
    self.backed_projects << proj
    proj.backed_by(self)
  end

end
