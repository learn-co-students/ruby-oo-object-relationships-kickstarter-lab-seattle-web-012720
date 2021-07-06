class Backer 

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.collect { |project_backer|
        project_backer.project if project_backer.backer == self 
        }.select {|value| value != nil }
    end

end