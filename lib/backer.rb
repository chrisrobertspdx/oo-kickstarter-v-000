class Backer
  attr_accessor :name, :backed_projects

  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []
    self.save
  end

  def save
    @@all << self
  end

  def back_project(proj)
    #proj = Project.find_or_create_by_name(name)
    self.backed_projects << proj
    if proj.backer_is_new?(self)
      proj.add_backer(self)
    end
  end

  def self.all
    @@all
  end

end
