class Backer
  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = Array.new
  end

  def back_project(proj)
    @backed_projects.push(proj)
    proj.backers.push(self)
  end
end
