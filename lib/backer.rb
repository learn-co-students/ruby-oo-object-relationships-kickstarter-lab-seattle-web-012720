require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # returns an array of projects associated with this Backer instance 
        back = ProjectBacker.all.select {|obj| obj.backer == self}
        back.map {|obj| obj.project}
        # binding.pry
    end

end

#binding.pry