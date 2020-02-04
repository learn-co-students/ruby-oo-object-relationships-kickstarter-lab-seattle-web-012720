class Project
    attr_reader :title
    @@all = []

    def initialize (title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer (backer)
        new_project = ProjectBacker.new(self,backer)
    end

    def backers
       list = ProjectBacker.all.select {|project| project.project == self}
       list.map {|project| project.backer} 
    end
end