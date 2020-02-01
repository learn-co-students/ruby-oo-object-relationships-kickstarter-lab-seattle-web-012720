class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       new = ProjectBacker.all.select { |pb| pb.project == self }
       new.map { |pb| pb.backer}
    end
end