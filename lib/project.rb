class Project
    
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.collect {|project_backer|
        project_backer.backer if project_backer.project == self 
        }.select {|value| value != nil }
    end
    
end