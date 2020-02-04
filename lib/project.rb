class Project
    @@all = []
    attr_reader :title

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_list = []
        ProjectBacker.all.each do |projectbacker|
            if projectbacker.project == self
                backer_list << projectbacker.backer

            end
            
        end
        backer_list
    end


    def self.all
        @@all
    end

end