
require 'pry'
class Backer 

    attr_reader :name  

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
        backed_projects = ProjectBacker.all.select {|project| project.backer == self}
        backed_projects.map{|backed_project| backed_project.project}
        
    #binding.pry
    end 

end 