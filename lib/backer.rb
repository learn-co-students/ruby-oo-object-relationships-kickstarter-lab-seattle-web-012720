class Backer

    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed_projs = ProjectBacker.all.select do |backed_project| 
            backed_project.backer == self
        end
        backed_projs.map {|backed_proj| backed_proj.project}
    end

end