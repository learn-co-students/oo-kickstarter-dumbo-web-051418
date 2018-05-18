class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    @backers.push(backer)
    backer.back_project(self)
  end
end
