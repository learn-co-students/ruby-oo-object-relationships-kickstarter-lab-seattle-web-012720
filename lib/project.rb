require 'pry'

class Project
    attr_accessor :title

    @@all = [ ]

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        # binding.pry
        filter = ProjectBacker.all.find_all {|project| project.project == self}
        filter.map {|projects| projects.backer}
    end
end