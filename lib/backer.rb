class Backer

    attr_reader :name

   

    def initialize(name)
    @name = name
    end

    def back_project(project)
        temp = ProjectBacker.new(project)
        project.backer = self
    end

    
end