class ProjectBacker

    @@all = []
    def self.all
        @@all
    end

    attr_reader :project, :backer
    def initialize(project, backer)
        @project = project
        @backer = backer
        self.class.all << self
    end
end