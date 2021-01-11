class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        return_array = []
        ProjectBacker.all.find_all do |project_backer|
            if project_backer.backer == self 
                return_array << project_backer.project
            end
        end
        return_array
    end

end