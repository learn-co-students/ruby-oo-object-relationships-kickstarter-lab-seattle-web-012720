class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        return_array = []
        ProjectBacker.all.each do |project_backer| 
            if project_backer.project == self
                return_array << project_backer.backer
            end
        end
        return_array
    end

end