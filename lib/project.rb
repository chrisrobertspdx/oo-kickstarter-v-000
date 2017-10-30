class Project
  attr_accessor :title, :backers
  @@all = []
  def initialize(title)
    @title = title
    @backers = []
  end
  def save
    @@all << self
  end
  def add_backer(backer)
    @backers << backer
  end
  def self.find_or_create_by_name(name)
    project_list = @@all.select{|e| e.name == name}
    if project_list.size > 0
       project_list[0]
    else
      instance = Project.new(name)
      instance.save
      instance
    end
  end
  def self.all
    @@all
  end
end
