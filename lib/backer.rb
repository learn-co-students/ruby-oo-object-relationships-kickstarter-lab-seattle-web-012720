require 'pry'

class Backer
    attr_accessor :name

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # binding.pry
        filter = ProjectBacker.all.find_all {|project| project.backer == self}
        filter.map {|project| project.project}
    end
end