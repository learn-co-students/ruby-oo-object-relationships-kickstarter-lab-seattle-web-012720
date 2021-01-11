class Backer
    @@all = []
    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backer_list = []
        ProjectBacker.all.each do |project| 
            if project.backer == self
                backer_list << project.project
            end
        end
        backer_list


    end

    def self.all
        @@all
    end

end