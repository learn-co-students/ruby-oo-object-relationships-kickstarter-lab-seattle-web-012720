class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pro = ProjectBacker.all.select {|obj| obj.project == self}
        pro.map { |obj| obj.backer }
    end

end