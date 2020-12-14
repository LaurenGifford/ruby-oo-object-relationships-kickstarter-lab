class Backer
    attr_accessor :name

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
        my_projects = ProjectBacker.all.select{|probak| probak.backer == self}
        my_projects.collect{|probak| probak.project}
    end

end


# # With `back_project` set up, the final step for the Backer class is to build an
#   instance method that returns all the projects associated with _this Backer
#   instance_. Since Project instances are not directly associated with Backer
#   instances, you will need to get this information _through_ the ProjectBacker
#   class.