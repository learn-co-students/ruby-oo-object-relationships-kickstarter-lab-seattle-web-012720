class Backer
    attr_accessor :name

    def initialize (name)
        @name = name
        # @@all << self
    end

    def back_project (project)
        new_project = ProjectBacker.new(project, self)
    end

    def backed_projects
        list = ProjectBacker.all.select {|project| project.backer == self}
        list.map {|project| project.project}
    end

    

end
